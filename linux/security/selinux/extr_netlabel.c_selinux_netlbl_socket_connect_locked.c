
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ nlbl_state; } ;


 scalar_t__ NLBL_CONNLABELED ;
 scalar_t__ NLBL_REQSKB ;
 int selinux_netlbl_socket_connect_helper (struct sock*,struct sockaddr*) ;

int selinux_netlbl_socket_connect_locked(struct sock *sk,
      struct sockaddr *addr)
{
 struct sk_security_struct *sksec = sk->sk_security;

 if (sksec->nlbl_state != NLBL_REQSKB &&
     sksec->nlbl_state != NLBL_CONNLABELED)
  return 0;

 return selinux_netlbl_socket_connect_helper(sk, addr);
}
