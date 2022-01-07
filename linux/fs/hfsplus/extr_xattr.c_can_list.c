
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_ADMIN ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 scalar_t__ capable (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static inline int can_list(const char *xattr_name)
{
 if (!xattr_name)
  return 0;

 return strncmp(xattr_name, XATTR_TRUSTED_PREFIX,
   XATTR_TRUSTED_PREFIX_LEN) ||
    capable(CAP_SYS_ADMIN);
}
