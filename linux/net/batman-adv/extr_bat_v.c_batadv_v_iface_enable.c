
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_hard_iface {int dummy; } ;


 int batadv_v_elp_iface_disable (struct batadv_hard_iface*) ;
 int batadv_v_elp_iface_enable (struct batadv_hard_iface*) ;
 int batadv_v_ogm_iface_enable (struct batadv_hard_iface*) ;

__attribute__((used)) static int batadv_v_iface_enable(struct batadv_hard_iface *hard_iface)
{
 int ret;

 ret = batadv_v_elp_iface_enable(hard_iface);
 if (ret < 0)
  return ret;

 ret = batadv_v_ogm_iface_enable(hard_iface);
 if (ret < 0)
  batadv_v_elp_iface_disable(hard_iface);

 return ret;
}
