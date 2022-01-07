
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int XATTR_NAME_SMACK ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int smack_inode_copy_up_xattr(const char *name)
{



 if (strcmp(name, XATTR_NAME_SMACK) == 0)
  return 1;

 return -EOPNOTSUPP;
}
