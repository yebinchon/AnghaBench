
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ sid; int sclass; } ;
struct lsm_network_audit {struct sock* sk; int member_0; } ;
struct TYPE_2__ {struct lsm_network_audit* net; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_NET ;
 scalar_t__ SECINITSID_KERNEL ;
 int avc_has_perm (int *,int ,scalar_t__,int ,int ,struct common_audit_data*) ;
 int current_sid () ;
 int selinux_state ;

__attribute__((used)) static int sock_has_perm(struct sock *sk, u32 perms)
{
 struct sk_security_struct *sksec = sk->sk_security;
 struct common_audit_data ad;
 struct lsm_network_audit net = {0,};

 if (sksec->sid == SECINITSID_KERNEL)
  return 0;

 ad.type = LSM_AUDIT_DATA_NET;
 ad.u.net = &net;
 ad.u.net->sk = sk;

 return avc_has_perm(&selinux_state,
       current_sid(), sksec->sid, sksec->sclass, perms,
       &ad);
}
