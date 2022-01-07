
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __dev_queue_xmit (struct sk_buff*,int *) ;

int dev_queue_xmit(struct sk_buff *skb)
{
 return __dev_queue_xmit(skb, ((void*)0));
}
