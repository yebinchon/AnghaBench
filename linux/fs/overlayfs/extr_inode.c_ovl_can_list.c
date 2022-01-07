
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_ADMIN ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 int init_user_ns ;
 scalar_t__ ns_capable_noaudit (int *,int ) ;
 int ovl_is_private_xattr (char const*) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static bool ovl_can_list(const char *s)
{

 if (strncmp(s, XATTR_TRUSTED_PREFIX, XATTR_TRUSTED_PREFIX_LEN) != 0)
  return 1;


 return !ovl_is_private_xattr(s) &&
        ns_capable_noaudit(&init_user_ns, CAP_SYS_ADMIN);
}
