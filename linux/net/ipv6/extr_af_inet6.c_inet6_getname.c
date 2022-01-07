
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_in6 {int sin6_addr; scalar_t__ sin6_scope_id; scalar_t__ sin6_port; scalar_t__ sin6_flowinfo; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; int sk_bound_dev_if; int sk_v6_rcv_saddr; int sk_v6_daddr; } ;
struct ipv6_pinfo {int saddr; scalar_t__ flow_label; scalar_t__ sndflow; } ;
struct inet_sock {scalar_t__ inet_sport; scalar_t__ inet_dport; } ;


 int AF_INET6 ;
 int ENOTCONN ;
 int TCPF_CLOSE ;
 int TCPF_SYN_SENT ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ipv6_addr_any (int *) ;
 scalar_t__ ipv6_iface_scope_id (int *,int ) ;

int inet6_getname(struct socket *sock, struct sockaddr *uaddr,
   int peer)
{
 struct sockaddr_in6 *sin = (struct sockaddr_in6 *)uaddr;
 struct sock *sk = sock->sk;
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);

 sin->sin6_family = AF_INET6;
 sin->sin6_flowinfo = 0;
 sin->sin6_scope_id = 0;
 if (peer) {
  if (!inet->inet_dport)
   return -ENOTCONN;
  if (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_SYN_SENT)) &&
      peer == 1)
   return -ENOTCONN;
  sin->sin6_port = inet->inet_dport;
  sin->sin6_addr = sk->sk_v6_daddr;
  if (np->sndflow)
   sin->sin6_flowinfo = np->flow_label;
 } else {
  if (ipv6_addr_any(&sk->sk_v6_rcv_saddr))
   sin->sin6_addr = np->saddr;
  else
   sin->sin6_addr = sk->sk_v6_rcv_saddr;

  sin->sin6_port = inet->inet_sport;
 }
 sin->sin6_scope_id = ipv6_iface_scope_id(&sin->sin6_addr,
       sk->sk_bound_dev_if);
 return sizeof(*sin);
}
