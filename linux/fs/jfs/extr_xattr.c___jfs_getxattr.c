
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jfs_ea_list {int dummy; } ;
struct jfs_ea {int namelen; int name; int valuelen; } ;
struct inode {int dummy; } ;
struct ea_buffer {scalar_t__ xattr; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int xattr_sem; } ;


 struct jfs_ea* END_EALIST (struct jfs_ea_list*) ;
 size_t ENODATA ;
 size_t ERANGE ;
 struct jfs_ea* FIRST_EA (struct jfs_ea_list*) ;
 TYPE_1__* JFS_IP (struct inode*) ;
 struct jfs_ea* NEXT_EA (struct jfs_ea*) ;
 int down_read (int *) ;
 int ea_get (struct inode*,struct ea_buffer*,int ) ;
 int ea_release (struct inode*,struct ea_buffer*) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ memcmp (char const*,int ,int) ;
 int memcpy (void*,char*,size_t) ;
 int strlen (char const*) ;
 int up_read (int *) ;

ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
         size_t buf_size)
{
 struct jfs_ea_list *ealist;
 struct jfs_ea *ea;
 struct ea_buffer ea_buf;
 int xattr_size;
 ssize_t size;
 int namelen = strlen(name);
 char *value;

 down_read(&JFS_IP(inode)->xattr_sem);

 xattr_size = ea_get(inode, &ea_buf, 0);

 if (xattr_size < 0) {
  size = xattr_size;
  goto out;
 }

 if (xattr_size == 0)
  goto not_found;

 ealist = (struct jfs_ea_list *) ea_buf.xattr;


 for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea))
  if ((namelen == ea->namelen) &&
      memcmp(name, ea->name, namelen) == 0) {

   size = le16_to_cpu(ea->valuelen);
   if (!data)
    goto release;
   else if (size > buf_size) {
    size = -ERANGE;
    goto release;
   }
   value = ((char *) &ea->name) + ea->namelen + 1;
   memcpy(data, value, size);
   goto release;
  }
      not_found:
 size = -ENODATA;
      release:
 ea_release(inode, &ea_buf);
      out:
 up_read(&JFS_IP(inode)->xattr_sem);

 return size;
}
