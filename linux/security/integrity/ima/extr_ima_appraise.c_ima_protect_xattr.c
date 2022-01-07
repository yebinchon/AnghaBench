
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int XATTR_NAME_IMA ;
 int capable (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int ima_protect_xattr(struct dentry *dentry, const char *xattr_name,
        const void *xattr_value, size_t xattr_value_len)
{
 if (strcmp(xattr_name, XATTR_NAME_IMA) == 0) {
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
  return 1;
 }
 return 0;
}
