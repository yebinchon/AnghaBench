
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; int peer_sid; int sid; } ;
struct sctp_endpoint {int peer_secid; int secid; } ;


 int selinux_netlbl_sctp_sk_clone (struct sock*,struct sock*) ;
 int selinux_policycap_extsockclass () ;
 void selinux_sk_clone_security (struct sock*,struct sock*) ;

__attribute__((used)) static void selinux_sctp_sk_clone(struct sctp_endpoint *ep, struct sock *sk,
      struct sock *newsk)
{
 struct sk_security_struct *sksec = sk->sk_security;
 struct sk_security_struct *newsksec = newsk->sk_security;




 if (!selinux_policycap_extsockclass())
  return selinux_sk_clone_security(sk, newsk);

 newsksec->sid = ep->secid;
 newsksec->peer_sid = ep->peer_secid;
 newsksec->sclass = sksec->sclass;
 selinux_netlbl_sctp_sk_clone(sk, newsk);
}
