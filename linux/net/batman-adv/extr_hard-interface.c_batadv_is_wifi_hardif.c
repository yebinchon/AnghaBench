
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_hard_iface {scalar_t__ wifi_flags; } ;



bool batadv_is_wifi_hardif(struct batadv_hard_iface *hard_iface)
{
 if (!hard_iface)
  return 0;

 return hard_iface->wifi_flags != 0;
}
