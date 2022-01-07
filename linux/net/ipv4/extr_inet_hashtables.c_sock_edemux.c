
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;


 int sock_gen_put (int ) ;

void sock_edemux(struct sk_buff *skb)
{
 sock_gen_put(skb->sk);
}
