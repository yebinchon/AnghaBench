
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_neigh_node {int ifinfo_lock; int ifinfo_list; } ;
struct batadv_neigh_ifinfo {int list; int refcount; struct batadv_hard_iface* if_outgoing; } ;
struct batadv_hard_iface {int refcount; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,struct batadv_hard_iface*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_neigh_ifinfo* kzalloc (int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct batadv_neigh_ifinfo *
batadv_neigh_ifinfo_new(struct batadv_neigh_node *neigh,
   struct batadv_hard_iface *if_outgoing)
{
 struct batadv_neigh_ifinfo *neigh_ifinfo;

 spin_lock_bh(&neigh->ifinfo_lock);

 neigh_ifinfo = batadv_neigh_ifinfo_get(neigh, if_outgoing);
 if (neigh_ifinfo)
  goto out;

 neigh_ifinfo = kzalloc(sizeof(*neigh_ifinfo), GFP_ATOMIC);
 if (!neigh_ifinfo)
  goto out;

 if (if_outgoing)
  kref_get(&if_outgoing->refcount);

 INIT_HLIST_NODE(&neigh_ifinfo->list);
 kref_init(&neigh_ifinfo->refcount);
 neigh_ifinfo->if_outgoing = if_outgoing;

 kref_get(&neigh_ifinfo->refcount);
 hlist_add_head_rcu(&neigh_ifinfo->list, &neigh->ifinfo_list);

out:
 spin_unlock_bh(&neigh->ifinfo_lock);

 return neigh_ifinfo;
}
