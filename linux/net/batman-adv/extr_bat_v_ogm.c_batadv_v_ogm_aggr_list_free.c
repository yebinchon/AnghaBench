
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ aggr_len; int aggr_list; int aggr_list_lock; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 int kfree_skb (struct sk_buff*) ;
 int lockdep_assert_held (int *) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_iface)
{
 struct sk_buff *skb;

 lockdep_assert_held(&hard_iface->bat_v.aggr_list_lock);

 while ((skb = skb_dequeue(&hard_iface->bat_v.aggr_list)))
  kfree_skb(skb);

 hard_iface->bat_v.aggr_len = 0;
}
