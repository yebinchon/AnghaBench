
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_orig_node {int const* orig; } ;
struct batadv_hardif_neigh_node {int list; int refcount; int last_seen; struct batadv_hard_iface* if_incoming; int orig; int addr; } ;
struct batadv_hard_iface {int neigh_list_lock; int neigh_list; int refcount; int soft_iface; } ;
struct TYPE_3__ {int (* hardif_init ) (struct batadv_hardif_neigh_node*) ;} ;
struct TYPE_4__ {TYPE_1__ neigh; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 struct batadv_hardif_neigh_node* batadv_hardif_neigh_get (struct batadv_hard_iface*,int const*) ;
 int ether_addr_copy (int ,int const*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int jiffies ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_hardif_neigh_node* kzalloc (int,int ) ;
 struct batadv_priv* netdev_priv (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct batadv_hardif_neigh_node*) ;

__attribute__((used)) static struct batadv_hardif_neigh_node *
batadv_hardif_neigh_create(struct batadv_hard_iface *hard_iface,
      const u8 *neigh_addr,
      struct batadv_orig_node *orig_node)
{
 struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);
 struct batadv_hardif_neigh_node *hardif_neigh;

 spin_lock_bh(&hard_iface->neigh_list_lock);


 hardif_neigh = batadv_hardif_neigh_get(hard_iface, neigh_addr);
 if (hardif_neigh)
  goto out;

 hardif_neigh = kzalloc(sizeof(*hardif_neigh), GFP_ATOMIC);
 if (!hardif_neigh)
  goto out;

 kref_get(&hard_iface->refcount);
 INIT_HLIST_NODE(&hardif_neigh->list);
 ether_addr_copy(hardif_neigh->addr, neigh_addr);
 ether_addr_copy(hardif_neigh->orig, orig_node->orig);
 hardif_neigh->if_incoming = hard_iface;
 hardif_neigh->last_seen = jiffies;

 kref_init(&hardif_neigh->refcount);

 if (bat_priv->algo_ops->neigh.hardif_init)
  bat_priv->algo_ops->neigh.hardif_init(hardif_neigh);

 hlist_add_head_rcu(&hardif_neigh->list, &hard_iface->neigh_list);

out:
 spin_unlock_bh(&hard_iface->neigh_list_lock);
 return hardif_neigh;
}
