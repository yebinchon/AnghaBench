
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct neighbour {int dummy; } ;


 int dev_queue_xmit (struct sk_buff*) ;

int neigh_direct_output(struct neighbour *neigh, struct sk_buff *skb)
{
 return dev_queue_xmit(skb);
}
