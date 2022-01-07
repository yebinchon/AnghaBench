
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;

__attribute__((used)) static bool
batadv_hardif_is_iface_up(const struct batadv_hard_iface *hard_iface)
{
 if (hard_iface->net_dev->flags & IFF_UP)
  return 1;

 return 0;
}
