
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; int peer_sid; int sclass; } ;
struct lsm_network_audit {struct sock* sk; int member_0; } ;
struct TYPE_2__ {struct lsm_network_audit* net; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_NET ;
 int UNIX_STREAM_SOCKET__CONNECTTO ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int security_sid_mls_copy (int *,int ,int ,int *) ;
 int selinux_state ;

__attribute__((used)) static int selinux_socket_unix_stream_connect(struct sock *sock,
           struct sock *other,
           struct sock *newsk)
{
 struct sk_security_struct *sksec_sock = sock->sk_security;
 struct sk_security_struct *sksec_other = other->sk_security;
 struct sk_security_struct *sksec_new = newsk->sk_security;
 struct common_audit_data ad;
 struct lsm_network_audit net = {0,};
 int err;

 ad.type = LSM_AUDIT_DATA_NET;
 ad.u.net = &net;
 ad.u.net->sk = other;

 err = avc_has_perm(&selinux_state,
      sksec_sock->sid, sksec_other->sid,
      sksec_other->sclass,
      UNIX_STREAM_SOCKET__CONNECTTO, &ad);
 if (err)
  return err;


 sksec_new->peer_sid = sksec_sock->sid;
 err = security_sid_mls_copy(&selinux_state, sksec_other->sid,
        sksec_sock->sid, &sksec_new->sid);
 if (err)
  return err;


 sksec_sock->peer_sid = sksec_new->sid;

 return 0;
}
