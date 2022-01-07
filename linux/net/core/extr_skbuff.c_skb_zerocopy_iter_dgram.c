
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct msghdr {int msg_iter; } ;


 int __zerocopy_sg_from_iter (int ,struct sk_buff*,int *,int) ;

int skb_zerocopy_iter_dgram(struct sk_buff *skb, struct msghdr *msg, int len)
{
 return __zerocopy_sg_from_iter(skb->sk, skb, &msg->msg_iter, len);
}
