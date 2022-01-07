
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct neighbour {int dev; scalar_t__ primary_key; } ;
typedef int __be32 ;
struct TYPE_2__ {int number; } ;


 TYPE_1__* PRIV (int ) ;
 int act_need ;
 int pr_debug (char*,struct neighbour*,struct sk_buff*) ;
 int to_atmarpd (int ,int ,int ) ;

__attribute__((used)) static void clip_neigh_solicit(struct neighbour *neigh, struct sk_buff *skb)
{
 __be32 *ip = (__be32 *) neigh->primary_key;

 pr_debug("(neigh %p, skb %p)\n", neigh, skb);
 to_atmarpd(act_need, PRIV(neigh->dev)->number, *ip);
}
