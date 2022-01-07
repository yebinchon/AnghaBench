
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;


 int sock_put (int ) ;

void sock_efree(struct sk_buff *skb)
{
 sock_put(skb->sk);
}
