
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HFSPLUS_ATTR_MAX_STRLEN ;
 int NLS_MAX_CHARSET_SIZE ;
 int __hfsplus_getxattr (struct inode*,char*,void*,size_t) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int strcpy (char*,char const*) ;

ssize_t hfsplus_getxattr(struct inode *inode, const char *name,
    void *value, size_t size,
    const char *prefix, size_t prefixlen)
{
 int res;
 char *xattr_name;

 xattr_name = kmalloc(NLS_MAX_CHARSET_SIZE * HFSPLUS_ATTR_MAX_STRLEN + 1,
        GFP_KERNEL);
 if (!xattr_name)
  return -ENOMEM;

 strcpy(xattr_name, prefix);
 strcpy(xattr_name + prefixlen, name);

 res = __hfsplus_getxattr(inode, xattr_name, value, size);
 kfree(xattr_name);
 return res;

}
