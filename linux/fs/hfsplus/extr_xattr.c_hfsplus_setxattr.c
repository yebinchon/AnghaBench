
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HFSPLUS_ATTR_MAX_STRLEN ;
 int NLS_MAX_CHARSET_SIZE ;
 int __hfsplus_setxattr (struct inode*,char*,void const*,size_t,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int strcpy (char*,char const*) ;

int hfsplus_setxattr(struct inode *inode, const char *name,
       const void *value, size_t size, int flags,
       const char *prefix, size_t prefixlen)
{
 char *xattr_name;
 int res;

 xattr_name = kmalloc(NLS_MAX_CHARSET_SIZE * HFSPLUS_ATTR_MAX_STRLEN + 1,
  GFP_KERNEL);
 if (!xattr_name)
  return -ENOMEM;
 strcpy(xattr_name, prefix);
 strcpy(xattr_name + prefixlen, name);
 res = __hfsplus_setxattr(inode, xattr_name, value, size, flags);
 kfree(xattr_name);
 return res;
}
