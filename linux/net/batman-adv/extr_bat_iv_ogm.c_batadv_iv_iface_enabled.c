
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_hard_iface {int dummy; } ;


 int batadv_iv_ogm_schedule (struct batadv_hard_iface*) ;

__attribute__((used)) static void batadv_iv_iface_enabled(struct batadv_hard_iface *hard_iface)
{

 batadv_iv_ogm_schedule(hard_iface);
}
