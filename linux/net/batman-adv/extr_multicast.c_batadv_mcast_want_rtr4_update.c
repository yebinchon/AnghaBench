
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hlist_node {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int want_lists_lock; int num_want_all_rtr4; struct hlist_head want_all_rtr4_list; } ;
struct batadv_priv {TYPE_1__ mcast; } ;
struct batadv_orig_node {int mcast_flags; int mcast_handler_lock; struct hlist_node mcast_want_all_rtr4_node; } ;


 int BATADV_MCAST_WANT_NO_RTR4 ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int hlist_add_head_rcu (struct hlist_node*,struct hlist_head*) ;
 int hlist_del_init_rcu (struct hlist_node*) ;
 int hlist_unhashed (struct hlist_node*) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_mcast_want_rtr4_update(struct batadv_priv *bat_priv,
       struct batadv_orig_node *orig,
       u8 mcast_flags)
{
 struct hlist_node *node = &orig->mcast_want_all_rtr4_node;
 struct hlist_head *head = &bat_priv->mcast.want_all_rtr4_list;

 lockdep_assert_held(&orig->mcast_handler_lock);


 if (!(mcast_flags & BATADV_MCAST_WANT_NO_RTR4) &&
     orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR4) {
  atomic_inc(&bat_priv->mcast.num_want_all_rtr4);

  spin_lock_bh(&bat_priv->mcast.want_lists_lock);

  WARN_ON(!hlist_unhashed(node));

  hlist_add_head_rcu(node, head);
  spin_unlock_bh(&bat_priv->mcast.want_lists_lock);

 } else if (mcast_flags & BATADV_MCAST_WANT_NO_RTR4 &&
     !(orig->mcast_flags & BATADV_MCAST_WANT_NO_RTR4)) {
  atomic_dec(&bat_priv->mcast.num_want_all_rtr4);

  spin_lock_bh(&bat_priv->mcast.want_lists_lock);

  WARN_ON(hlist_unhashed(node));

  hlist_del_init_rcu(node);
  spin_unlock_bh(&bat_priv->mcast.want_lists_lock);
 }
}
