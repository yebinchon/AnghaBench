
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int nlbl_state; } ;


 int NLBL_LABELED ;
 int NLBL_UNSET ;
 scalar_t__ PF_INET ;

void selinux_netlbl_inet_csk_clone(struct sock *sk, u16 family)
{
 struct sk_security_struct *sksec = sk->sk_security;

 if (family == PF_INET)
  sksec->nlbl_state = NLBL_LABELED;
 else
  sksec->nlbl_state = NLBL_UNSET;
}
