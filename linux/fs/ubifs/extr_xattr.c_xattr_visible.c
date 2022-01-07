
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_ADMIN ;
 int UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 int capable (int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static bool xattr_visible(const char *name)
{

 if (strcmp(name, UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT) == 0)
  return 0;


 if (strncmp(name, XATTR_TRUSTED_PREFIX,
      XATTR_TRUSTED_PREFIX_LEN) == 0 && !capable(CAP_SYS_ADMIN))
  return 0;

 return 1;
}
