
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;


 int SQUASHFS_XATTR_PREFIX_MASK ;



 int SQUASHFS_XATTR_VALUE_OOL ;
 struct xattr_handler const squashfs_xattr_security_handler ;
 struct xattr_handler const squashfs_xattr_trusted_handler ;
 struct xattr_handler const squashfs_xattr_user_handler ;

__attribute__((used)) static const struct xattr_handler *squashfs_xattr_handler(int type)
{
 if (type & ~(SQUASHFS_XATTR_PREFIX_MASK | SQUASHFS_XATTR_VALUE_OOL))

  return ((void*)0);

 switch (type & SQUASHFS_XATTR_PREFIX_MASK) {
 case 128:
  return &squashfs_xattr_user_handler;
 case 129:
  return &squashfs_xattr_trusted_handler;
 case 130:
  return &squashfs_xattr_security_handler;
 default:

  return ((void*)0);
 }
}
