
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct flowi4 {int dummy; } ;


 struct sk_buff* ip_finish_skb (struct sock*,struct flowi4*) ;
 int ip_send_skb (int ,struct sk_buff*) ;
 int sock_net (struct sock*) ;

int ip_push_pending_frames(struct sock *sk, struct flowi4 *fl4)
{
 struct sk_buff *skb;

 skb = ip_finish_skb(sk, fl4);
 if (!skb)
  return 0;


 return ip_send_skb(sock_net(sk), skb);
}
