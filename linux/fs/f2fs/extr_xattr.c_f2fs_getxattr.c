
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_xattr_entry {char* e_name; int e_name_len; int e_value_size; } ;
struct TYPE_2__ {int i_xattr_sem; } ;


 int EINVAL ;
 int ERANGE ;
 TYPE_1__* F2FS_I (struct inode*) ;
 unsigned int F2FS_NAME_LEN ;
 int down_read (int *) ;
 int kvfree (void*) ;
 unsigned int le16_to_cpu (int ) ;
 int lookup_all_xattrs (struct inode*,struct page*,int,unsigned int,char const*,struct f2fs_xattr_entry**,void**,int*) ;
 int memcpy (void*,char*,unsigned int) ;
 unsigned int strlen (char const*) ;
 int up_read (int *) ;

int f2fs_getxattr(struct inode *inode, int index, const char *name,
  void *buffer, size_t buffer_size, struct page *ipage)
{
 struct f2fs_xattr_entry *entry = ((void*)0);
 int error = 0;
 unsigned int size, len;
 void *base_addr = ((void*)0);
 int base_size;

 if (name == ((void*)0))
  return -EINVAL;

 len = strlen(name);
 if (len > F2FS_NAME_LEN)
  return -ERANGE;

 down_read(&F2FS_I(inode)->i_xattr_sem);
 error = lookup_all_xattrs(inode, ipage, index, len, name,
    &entry, &base_addr, &base_size);
 up_read(&F2FS_I(inode)->i_xattr_sem);
 if (error)
  return error;

 size = le16_to_cpu(entry->e_value_size);

 if (buffer && size > buffer_size) {
  error = -ERANGE;
  goto out;
 }

 if (buffer) {
  char *pval = entry->e_name + entry->e_name_len;

  if (base_size - (pval - (char *)base_addr) < size) {
   error = -ERANGE;
   goto out;
  }
  memcpy(buffer, pval, size);
 }
 error = size;
out:
 kvfree(base_addr);
 return error;
}
