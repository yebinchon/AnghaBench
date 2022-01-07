
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* ip6_finish_skb (struct sock*) ;
 int ip6_send_skb (struct sk_buff*) ;

int ip6_push_pending_frames(struct sock *sk)
{
 struct sk_buff *skb;

 skb = ip6_finish_skb(sk);
 if (!skb)
  return 0;

 return ip6_send_skb(skb);
}
