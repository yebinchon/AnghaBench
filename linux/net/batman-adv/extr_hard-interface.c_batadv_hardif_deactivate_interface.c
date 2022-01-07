
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_hard_iface {scalar_t__ if_status; int soft_iface; TYPE_1__* net_dev; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ BATADV_IF_ACTIVE ;
 scalar_t__ BATADV_IF_INACTIVE ;
 scalar_t__ BATADV_IF_TO_BE_ACTIVATED ;
 int batadv_info (int ,char*,int ) ;
 int batadv_update_min_mtu (int ) ;

__attribute__((used)) static void
batadv_hardif_deactivate_interface(struct batadv_hard_iface *hard_iface)
{
 if (hard_iface->if_status != BATADV_IF_ACTIVE &&
     hard_iface->if_status != BATADV_IF_TO_BE_ACTIVATED)
  return;

 hard_iface->if_status = BATADV_IF_INACTIVE;

 batadv_info(hard_iface->soft_iface, "Interface deactivated: %s\n",
      hard_iface->net_dev->name);

 batadv_update_min_mtu(hard_iface->soft_iface);
}
