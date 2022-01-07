
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_hard_iface {int dummy; } ;


 int batadv_v_elp_primary_iface_set (struct batadv_hard_iface*) ;
 int batadv_v_ogm_primary_iface_set (struct batadv_hard_iface*) ;

__attribute__((used)) static void batadv_v_primary_iface_set(struct batadv_hard_iface *hard_iface)
{
 batadv_v_elp_primary_iface_set(hard_iface);
 batadv_v_ogm_primary_iface_set(hard_iface);
}
