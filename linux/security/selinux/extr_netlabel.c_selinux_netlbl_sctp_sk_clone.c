
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int nlbl_state; } ;



void selinux_netlbl_sctp_sk_clone(struct sock *sk, struct sock *newsk)
{
 struct sk_security_struct *sksec = sk->sk_security;
 struct sk_security_struct *newsksec = newsk->sk_security;

 newsksec->nlbl_state = sksec->nlbl_state;
}
