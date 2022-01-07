
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* sk; } ;
struct sk_security_struct {int sclass; int sid; } ;
struct lsm_network_audit {TYPE_2__* sk; int member_0; } ;
struct TYPE_3__ {struct lsm_network_audit* net; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;
struct TYPE_4__ {struct sk_security_struct* sk_security; } ;


 int LSM_AUDIT_DATA_NET ;
 int SOCKET__SENDTO ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_socket_unix_may_send(struct socket *sock,
     struct socket *other)
{
 struct sk_security_struct *ssec = sock->sk->sk_security;
 struct sk_security_struct *osec = other->sk->sk_security;
 struct common_audit_data ad;
 struct lsm_network_audit net = {0,};

 ad.type = LSM_AUDIT_DATA_NET;
 ad.u.net = &net;
 ad.u.net->sk = other->sk;

 return avc_has_perm(&selinux_state,
       ssec->sid, osec->sid, osec->sclass, SOCKET__SENDTO,
       &ad);
}
