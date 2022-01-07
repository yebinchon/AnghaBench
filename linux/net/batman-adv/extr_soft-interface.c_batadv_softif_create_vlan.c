
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct batadv_softif_vlan {unsigned short vid; int list; int refcount; int ap_isolation; struct batadv_priv* bat_priv; } ;
struct batadv_priv {TYPE_1__* soft_iface; int softif_vlan_list_lock; int softif_vlan_list; } ;
struct TYPE_3__ {int dev_addr; } ;


 int BATADV_NO_MARK ;
 int BATADV_NULL_IFINDEX ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int atomic_set (int *,int ) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,unsigned short) ;
 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;
 int batadv_sysfs_add_vlan (TYPE_1__*,struct batadv_softif_vlan*) ;
 int batadv_tt_local_add (TYPE_1__*,int ,unsigned short,int ,int ) ;
 int hlist_add_head_rcu (int *,int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_softif_vlan* kzalloc (int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int batadv_softif_create_vlan(struct batadv_priv *bat_priv, unsigned short vid)
{
 struct batadv_softif_vlan *vlan;
 int err;

 spin_lock_bh(&bat_priv->softif_vlan_list_lock);

 vlan = batadv_softif_vlan_get(bat_priv, vid);
 if (vlan) {
  batadv_softif_vlan_put(vlan);
  spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
  return -EEXIST;
 }

 vlan = kzalloc(sizeof(*vlan), GFP_ATOMIC);
 if (!vlan) {
  spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
  return -ENOMEM;
 }

 vlan->bat_priv = bat_priv;
 vlan->vid = vid;
 kref_init(&vlan->refcount);

 atomic_set(&vlan->ap_isolation, 0);

 kref_get(&vlan->refcount);
 hlist_add_head_rcu(&vlan->list, &bat_priv->softif_vlan_list);
 spin_unlock_bh(&bat_priv->softif_vlan_list_lock);




 err = batadv_sysfs_add_vlan(bat_priv->soft_iface, vlan);
 if (err) {

  batadv_softif_vlan_put(vlan);


  batadv_softif_vlan_put(vlan);
  return err;
 }




 batadv_tt_local_add(bat_priv->soft_iface,
       bat_priv->soft_iface->dev_addr, vid,
       BATADV_NULL_IFINDEX, BATADV_NO_MARK);


 batadv_softif_vlan_put(vlan);

 return 0;
}
