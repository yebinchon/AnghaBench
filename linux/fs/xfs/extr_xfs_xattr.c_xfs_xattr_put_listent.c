
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_attr_list_context {scalar_t__ count; } ;


 int ASSERT (int) ;
 int CAP_SYS_ADMIN ;
 int SGI_ACL_DEFAULT ;
 int SGI_ACL_DEFAULT_SIZE ;
 int SGI_ACL_FILE ;
 int SGI_ACL_FILE_SIZE ;
 unsigned char* XATTR_POSIX_ACL_ACCESS ;
 unsigned char* XATTR_POSIX_ACL_DEFAULT ;
 char* XATTR_SECURITY_PREFIX ;
 int XATTR_SECURITY_PREFIX_LEN ;
 char* XATTR_SYSTEM_PREFIX ;
 int XATTR_SYSTEM_PREFIX_LEN ;
 char* XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 char* XATTR_USER_PREFIX ;
 int XATTR_USER_PREFIX_LEN ;
 int XFS_ATTR_ROOT ;
 int XFS_ATTR_SECURE ;
 int __xfs_xattr_put_listent (struct xfs_attr_list_context*,char*,int,unsigned char*,int) ;
 int capable (int ) ;
 int strlen (unsigned char*) ;
 scalar_t__ strncmp (unsigned char*,int ,int) ;

__attribute__((used)) static void
xfs_xattr_put_listent(
 struct xfs_attr_list_context *context,
 int flags,
 unsigned char *name,
 int namelen,
 int valuelen)
{
 char *prefix;
 int prefix_len;

 ASSERT(context->count >= 0);

 if (flags & XFS_ATTR_ROOT) {
  if (!capable(CAP_SYS_ADMIN))
   return;

  prefix = XATTR_TRUSTED_PREFIX;
  prefix_len = XATTR_TRUSTED_PREFIX_LEN;
 } else if (flags & XFS_ATTR_SECURE) {
  prefix = XATTR_SECURITY_PREFIX;
  prefix_len = XATTR_SECURITY_PREFIX_LEN;
 } else {
  prefix = XATTR_USER_PREFIX;
  prefix_len = XATTR_USER_PREFIX_LEN;
 }

 __xfs_xattr_put_listent(context, prefix, prefix_len, name,
    namelen);
 return;
}
