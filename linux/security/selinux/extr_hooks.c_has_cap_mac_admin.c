
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 int CAP_MAC_ADMIN ;
 unsigned int CAP_OPT_NOAUDIT ;
 unsigned int CAP_OPT_NONE ;
 scalar_t__ cap_capable (struct cred const*,int *,int ,unsigned int) ;
 scalar_t__ cred_has_capability (struct cred const*,int ,unsigned int,int) ;
 struct cred* current_cred () ;
 int init_user_ns ;

__attribute__((used)) static bool has_cap_mac_admin(bool audit)
{
 const struct cred *cred = current_cred();
 unsigned int opts = audit ? CAP_OPT_NONE : CAP_OPT_NOAUDIT;

 if (cap_capable(cred, &init_user_ns, CAP_MAC_ADMIN, opts))
  return 0;
 if (cred_has_capability(cred, CAP_MAC_ADMIN, opts, 1))
  return 0;
 return 1;
}
