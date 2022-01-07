
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct net {int dummy; } ;
struct inet_request_sock {int ireq_opt; } ;
struct TYPE_2__ {int saddr; int daddr; } ;


 int RCU_INIT_POINTER (int ,int ) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int req_to_sk (struct request_sock*) ;
 int sk_daddr_set (int ,int ) ;
 int sk_rcv_saddr_set (int ,int ) ;
 struct net* sock_net (struct sock const*) ;
 int tcp_v4_save_options (struct net*,struct sk_buff*) ;

__attribute__((used)) static void tcp_v4_init_req(struct request_sock *req,
       const struct sock *sk_listener,
       struct sk_buff *skb)
{
 struct inet_request_sock *ireq = inet_rsk(req);
 struct net *net = sock_net(sk_listener);

 sk_rcv_saddr_set(req_to_sk(req), ip_hdr(skb)->daddr);
 sk_daddr_set(req_to_sk(req), ip_hdr(skb)->saddr);
 RCU_INIT_POINTER(ireq->ireq_opt, tcp_v4_save_options(net, skb));
}
