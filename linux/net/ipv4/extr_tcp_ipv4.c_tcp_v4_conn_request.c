
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int rt_flags; } ;


 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 TYPE_1__* skb_rtable (struct sk_buff*) ;
 int tcp_conn_request (int *,int *,struct sock*,struct sk_buff*) ;
 int tcp_listendrop (struct sock*) ;
 int tcp_request_sock_ipv4_ops ;
 int tcp_request_sock_ops ;

int tcp_v4_conn_request(struct sock *sk, struct sk_buff *skb)
{

 if (skb_rtable(skb)->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST))
  goto drop;

 return tcp_conn_request(&tcp_request_sock_ops,
    &tcp_request_sock_ipv4_ops, sk, skb);

drop:
 tcp_listendrop(sk);
 return 0;
}
