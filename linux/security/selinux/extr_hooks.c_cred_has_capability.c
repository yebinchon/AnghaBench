
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct cred {int dummy; } ;
struct TYPE_2__ {int cap; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;
struct av_decision {int dummy; } ;


 int BUG () ;
 unsigned int CAP_OPT_NOAUDIT ;
 int CAP_TO_INDEX (int) ;
 int CAP_TO_MASK (int) ;
 int EINVAL ;
 int LSM_AUDIT_DATA_CAP ;
 int SECCLASS_CAP2_USERNS ;
 int SECCLASS_CAPABILITY ;
 int SECCLASS_CAPABILITY2 ;
 int SECCLASS_CAP_USERNS ;
 int avc_audit (int *,int ,int ,int ,int ,struct av_decision*,int,struct common_audit_data*,int ) ;
 int avc_has_perm_noaudit (int *,int ,int ,int ,int ,int ,struct av_decision*) ;
 int cred_sid (struct cred const*) ;
 int pr_err (char*,int) ;
 int selinux_state ;

__attribute__((used)) static int cred_has_capability(const struct cred *cred,
          int cap, unsigned int opts, bool initns)
{
 struct common_audit_data ad;
 struct av_decision avd;
 u16 sclass;
 u32 sid = cred_sid(cred);
 u32 av = CAP_TO_MASK(cap);
 int rc;

 ad.type = LSM_AUDIT_DATA_CAP;
 ad.u.cap = cap;

 switch (CAP_TO_INDEX(cap)) {
 case 0:
  sclass = initns ? SECCLASS_CAPABILITY : SECCLASS_CAP_USERNS;
  break;
 case 1:
  sclass = initns ? SECCLASS_CAPABILITY2 : SECCLASS_CAP2_USERNS;
  break;
 default:
  pr_err("SELinux:  out of range capability %d\n", cap);
  BUG();
  return -EINVAL;
 }

 rc = avc_has_perm_noaudit(&selinux_state,
      sid, sid, sclass, av, 0, &avd);
 if (!(opts & CAP_OPT_NOAUDIT)) {
  int rc2 = avc_audit(&selinux_state,
        sid, sid, sclass, av, &avd, rc, &ad, 0);
  if (rc2)
   return rc2;
 }
 return rc;
}
