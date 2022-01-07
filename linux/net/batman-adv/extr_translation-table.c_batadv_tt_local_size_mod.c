
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_entries; } ;
struct batadv_softif_vlan {TYPE_1__ tt; } ;
struct batadv_priv {int dummy; } ;


 int atomic_add (int,int *) ;
 struct batadv_softif_vlan* batadv_softif_vlan_get (struct batadv_priv*,unsigned short) ;
 int batadv_softif_vlan_put (struct batadv_softif_vlan*) ;

__attribute__((used)) static void batadv_tt_local_size_mod(struct batadv_priv *bat_priv,
         unsigned short vid, int v)
{
 struct batadv_softif_vlan *vlan;

 vlan = batadv_softif_vlan_get(bat_priv, vid);
 if (!vlan)
  return;

 atomic_add(v, &vlan->tt.num_entries);

 batadv_softif_vlan_put(vlan);
}
