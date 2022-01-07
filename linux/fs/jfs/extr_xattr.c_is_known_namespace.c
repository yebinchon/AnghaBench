
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XATTR_SECURITY_PREFIX ;
 int XATTR_SECURITY_PREFIX_LEN ;
 int XATTR_SYSTEM_PREFIX ;
 int XATTR_SYSTEM_PREFIX_LEN ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 int XATTR_USER_PREFIX ;
 int XATTR_USER_PREFIX_LEN ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static int is_known_namespace(const char *name)
{
 if (strncmp(name, XATTR_SYSTEM_PREFIX, XATTR_SYSTEM_PREFIX_LEN) &&
     strncmp(name, XATTR_USER_PREFIX, XATTR_USER_PREFIX_LEN) &&
     strncmp(name, XATTR_SECURITY_PREFIX, XATTR_SECURITY_PREFIX_LEN) &&
     strncmp(name, XATTR_TRUSTED_PREFIX, XATTR_TRUSTED_PREFIX_LEN))
  return 0;

 return 1;
}
