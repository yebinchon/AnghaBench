
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int nlbl_state; } ;
struct netlbl_lsm_secattr {int dummy; } ;


 scalar_t__ AF_UNSPEC ;
 int ENOMEM ;
 int NLBL_CONNLABELED ;
 int NLBL_REQSKB ;
 int netlbl_conn_setattr (struct sock*,struct sockaddr*,struct netlbl_lsm_secattr*) ;
 int netlbl_sock_delattr (struct sock*) ;
 struct netlbl_lsm_secattr* selinux_netlbl_sock_genattr (struct sock*) ;

__attribute__((used)) static int selinux_netlbl_socket_connect_helper(struct sock *sk,
      struct sockaddr *addr)
{
 int rc;
 struct sk_security_struct *sksec = sk->sk_security;
 struct netlbl_lsm_secattr *secattr;




 if (addr->sa_family == AF_UNSPEC) {
  netlbl_sock_delattr(sk);
  sksec->nlbl_state = NLBL_REQSKB;
  rc = 0;
  return rc;
 }
 secattr = selinux_netlbl_sock_genattr(sk);
 if (secattr == ((void*)0)) {
  rc = -ENOMEM;
  return rc;
 }
 rc = netlbl_conn_setattr(sk, addr, secattr);
 if (rc == 0)
  sksec->nlbl_state = NLBL_CONNLABELED;

 return rc;
}
