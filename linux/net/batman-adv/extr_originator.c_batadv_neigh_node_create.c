
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_orig_node {int neigh_list_lock; int orig; int bat_priv; int neigh_list; } ;
struct batadv_neigh_node {int list; int refcount; struct batadv_hardif_neigh_node* hardif_neigh; int last_seen; struct batadv_orig_node* orig_node; struct batadv_hard_iface* if_incoming; int addr; int ifinfo_lock; int ifinfo_list; } ;
struct batadv_hardif_neigh_node {int refcount; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; int refcount; } ;
struct TYPE_2__ {int name; } ;


 int BATADV_DBG_BATMAN ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_HLIST_NODE (int *) ;
 int batadv_dbg (int ,int ,char*,int const*,int ,int ) ;
 struct batadv_hardif_neigh_node* batadv_hardif_neigh_get_or_create (struct batadv_hard_iface*,int const*,struct batadv_orig_node*) ;
 int batadv_hardif_neigh_put (struct batadv_hardif_neigh_node*) ;
 struct batadv_neigh_node* batadv_neigh_node_get (struct batadv_orig_node*,struct batadv_hard_iface*,int const*) ;
 int ether_addr_copy (int ,int const*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int jiffies ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_neigh_node* kzalloc (int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct batadv_neigh_node *
batadv_neigh_node_create(struct batadv_orig_node *orig_node,
    struct batadv_hard_iface *hard_iface,
    const u8 *neigh_addr)
{
 struct batadv_neigh_node *neigh_node;
 struct batadv_hardif_neigh_node *hardif_neigh = ((void*)0);

 spin_lock_bh(&orig_node->neigh_list_lock);

 neigh_node = batadv_neigh_node_get(orig_node, hard_iface, neigh_addr);
 if (neigh_node)
  goto out;

 hardif_neigh = batadv_hardif_neigh_get_or_create(hard_iface,
        neigh_addr, orig_node);
 if (!hardif_neigh)
  goto out;

 neigh_node = kzalloc(sizeof(*neigh_node), GFP_ATOMIC);
 if (!neigh_node)
  goto out;

 INIT_HLIST_NODE(&neigh_node->list);
 INIT_HLIST_HEAD(&neigh_node->ifinfo_list);
 spin_lock_init(&neigh_node->ifinfo_lock);

 kref_get(&hard_iface->refcount);
 ether_addr_copy(neigh_node->addr, neigh_addr);
 neigh_node->if_incoming = hard_iface;
 neigh_node->orig_node = orig_node;
 neigh_node->last_seen = jiffies;


 kref_get(&hardif_neigh->refcount);
 neigh_node->hardif_neigh = hardif_neigh;


 kref_init(&neigh_node->refcount);

 kref_get(&neigh_node->refcount);
 hlist_add_head_rcu(&neigh_node->list, &orig_node->neigh_list);

 batadv_dbg(BATADV_DBG_BATMAN, orig_node->bat_priv,
     "Creating new neighbor %pM for orig_node %pM on interface %s\n",
     neigh_addr, orig_node->orig, hard_iface->net_dev->name);

out:
 spin_unlock_bh(&orig_node->neigh_list_lock);

 if (hardif_neigh)
  batadv_hardif_neigh_put(hardif_neigh);
 return neigh_node;
}
