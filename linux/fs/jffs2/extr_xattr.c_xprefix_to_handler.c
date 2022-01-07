
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;







 struct xattr_handler jffs2_security_xattr_handler ;
 struct xattr_handler jffs2_trusted_xattr_handler ;
 struct xattr_handler jffs2_user_xattr_handler ;
 struct xattr_handler posix_acl_access_xattr_handler ;
 struct xattr_handler posix_acl_default_xattr_handler ;

__attribute__((used)) static const struct xattr_handler *xprefix_to_handler(int xprefix) {
 const struct xattr_handler *ret;

 switch (xprefix) {
 case 128:
  ret = &jffs2_user_xattr_handler;
  break;
 case 129:
  ret = &jffs2_trusted_xattr_handler;
  break;
 default:
  ret = ((void*)0);
  break;
 }
 return ret;
}
