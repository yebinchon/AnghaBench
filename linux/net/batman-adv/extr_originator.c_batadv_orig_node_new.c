
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node_vlan {int dummy; } ;
struct batadv_orig_node {int last_seen; unsigned long bcast_seqno_reset; TYPE_1__* fragments; int mcast_handler_lock; int mcast_want_all_ipv6_node; int mcast_want_all_ipv4_node; int mcast_want_all_unsnoopables_node; int mcast_flags; scalar_t__ tt_buff_len; int * tt_buff; int last_ttvn; int orig; struct batadv_priv* bat_priv; int refcount; int vlan_list_lock; int tt_lock; int tt_buff_lock; int neigh_list_lock; int bcast_seqno_lock; int ifinfo_list; int vlan_list; int neigh_list; } ;
struct TYPE_2__ {scalar_t__ size; int lock; int fragment_list; } ;


 int BATADV_DBG_BATMAN ;
 int BATADV_FRAG_BUFFER_COUNT ;
 int BATADV_MCAST_WANT_NO_RTR4 ;
 int BATADV_MCAST_WANT_NO_RTR6 ;
 int BATADV_NO_FLAGS ;
 int BATADV_RESET_PROTECTION_MS ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_HLIST_NODE (int *) ;
 int atomic_set (int *,int ) ;
 int batadv_dat_init_orig_node_addr (struct batadv_orig_node*) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int const*) ;
 int batadv_nc_init_orig (struct batadv_orig_node*) ;
 struct batadv_orig_node_vlan* batadv_orig_node_vlan_new (struct batadv_orig_node*,int ) ;
 int batadv_orig_node_vlan_put (struct batadv_orig_node_vlan*) ;
 int ether_addr_copy (int ,int const*) ;
 int jiffies ;
 int kfree (struct batadv_orig_node*) ;
 int kref_init (int *) ;
 struct batadv_orig_node* kzalloc (int,int ) ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_init (int *) ;

struct batadv_orig_node *batadv_orig_node_new(struct batadv_priv *bat_priv,
           const u8 *addr)
{
 struct batadv_orig_node *orig_node;
 struct batadv_orig_node_vlan *vlan;
 unsigned long reset_time;
 int i;

 batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
     "Creating new originator: %pM\n", addr);

 orig_node = kzalloc(sizeof(*orig_node), GFP_ATOMIC);
 if (!orig_node)
  return ((void*)0);

 INIT_HLIST_HEAD(&orig_node->neigh_list);
 INIT_HLIST_HEAD(&orig_node->vlan_list);
 INIT_HLIST_HEAD(&orig_node->ifinfo_list);
 spin_lock_init(&orig_node->bcast_seqno_lock);
 spin_lock_init(&orig_node->neigh_list_lock);
 spin_lock_init(&orig_node->tt_buff_lock);
 spin_lock_init(&orig_node->tt_lock);
 spin_lock_init(&orig_node->vlan_list_lock);

 batadv_nc_init_orig(orig_node);


 kref_init(&orig_node->refcount);

 orig_node->bat_priv = bat_priv;
 ether_addr_copy(orig_node->orig, addr);
 batadv_dat_init_orig_node_addr(orig_node);
 atomic_set(&orig_node->last_ttvn, 0);
 orig_node->tt_buff = ((void*)0);
 orig_node->tt_buff_len = 0;
 orig_node->last_seen = jiffies;
 reset_time = jiffies - 1 - msecs_to_jiffies(BATADV_RESET_PROTECTION_MS);
 orig_node->bcast_seqno_reset = reset_time;
 vlan = batadv_orig_node_vlan_new(orig_node, BATADV_NO_FLAGS);
 if (!vlan)
  goto free_orig_node;




 batadv_orig_node_vlan_put(vlan);

 for (i = 0; i < BATADV_FRAG_BUFFER_COUNT; i++) {
  INIT_HLIST_HEAD(&orig_node->fragments[i].fragment_list);
  spin_lock_init(&orig_node->fragments[i].lock);
  orig_node->fragments[i].size = 0;
 }

 return orig_node;
free_orig_node:
 kfree(orig_node);
 return ((void*)0);
}
