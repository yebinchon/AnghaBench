
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; } ;


 int ETH_P_IP ;
 scalar_t__ htons (int ) ;
 int ipv6_unicast_destination (struct sk_buff*) ;
 int tcp6_request_sock_ops ;
 int tcp_conn_request (int *,int *,struct sock*,struct sk_buff*) ;
 int tcp_listendrop (struct sock*) ;
 int tcp_request_sock_ipv6_ops ;
 int tcp_v4_conn_request (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int tcp_v6_conn_request(struct sock *sk, struct sk_buff *skb)
{
 if (skb->protocol == htons(ETH_P_IP))
  return tcp_v4_conn_request(sk, skb);

 if (!ipv6_unicast_destination(skb))
  goto drop;

 return tcp_conn_request(&tcp6_request_sock_ops,
    &tcp_request_sock_ipv6_ops, sk, skb);

drop:
 tcp_listendrop(sk);
 return 0;
}
