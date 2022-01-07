
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct guehdr {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int gue_control_message(struct sk_buff *skb, struct guehdr *guehdr)
{

 kfree_skb(skb);
 return 0;
}
