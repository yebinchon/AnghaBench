
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int IPSTATS_MIB_INDISCARDS ;
 int IP_INC_STATS (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int l2tp_ip_backlog_recv(struct sock *sk, struct sk_buff *skb)
{
 int rc;


 rc = sock_queue_rcv_skb(sk, skb);
 if (rc < 0)
  goto drop;

 return 0;

drop:
 IP_INC_STATS(sock_net(sk), IPSTATS_MIB_INDISCARDS);
 kfree_skb(skb);
 return 0;
}
