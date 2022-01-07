
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_orig_node {int neigh_list_lock; int ifinfo_list; } ;
struct batadv_orig_ifinfo {unsigned long batman_seqno_reset; int list; int refcount; struct batadv_hard_iface* if_outgoing; } ;
struct batadv_hard_iface {int refcount; } ;


 struct batadv_hard_iface* BATADV_IF_DEFAULT ;
 int BATADV_RESET_PROTECTION_MS ;
 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 struct batadv_orig_ifinfo* batadv_orig_ifinfo_get (struct batadv_orig_node*,struct batadv_hard_iface*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int jiffies ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_orig_ifinfo* kzalloc (int,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct batadv_orig_ifinfo *
batadv_orig_ifinfo_new(struct batadv_orig_node *orig_node,
         struct batadv_hard_iface *if_outgoing)
{
 struct batadv_orig_ifinfo *orig_ifinfo;
 unsigned long reset_time;

 spin_lock_bh(&orig_node->neigh_list_lock);

 orig_ifinfo = batadv_orig_ifinfo_get(orig_node, if_outgoing);
 if (orig_ifinfo)
  goto out;

 orig_ifinfo = kzalloc(sizeof(*orig_ifinfo), GFP_ATOMIC);
 if (!orig_ifinfo)
  goto out;

 if (if_outgoing != BATADV_IF_DEFAULT)
  kref_get(&if_outgoing->refcount);

 reset_time = jiffies - 1;
 reset_time -= msecs_to_jiffies(BATADV_RESET_PROTECTION_MS);
 orig_ifinfo->batman_seqno_reset = reset_time;
 orig_ifinfo->if_outgoing = if_outgoing;
 INIT_HLIST_NODE(&orig_ifinfo->list);
 kref_init(&orig_ifinfo->refcount);

 kref_get(&orig_ifinfo->refcount);
 hlist_add_head_rcu(&orig_ifinfo->list,
      &orig_node->ifinfo_list);
out:
 spin_unlock_bh(&orig_node->neigh_list_lock);
 return orig_ifinfo;
}
