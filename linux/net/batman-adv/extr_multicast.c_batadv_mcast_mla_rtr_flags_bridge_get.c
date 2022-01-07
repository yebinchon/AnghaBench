
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_MCAST_WANT_NO_RTR4 ;
 int BATADV_MCAST_WANT_NO_RTR6 ;
 int BATADV_NO_FLAGS ;

__attribute__((used)) static inline u8
batadv_mcast_mla_rtr_flags_bridge_get(struct batadv_priv *bat_priv,
          struct net_device *bridge)
{
 if (bridge)
  return BATADV_NO_FLAGS;
 else
  return BATADV_MCAST_WANT_NO_RTR4 | BATADV_MCAST_WANT_NO_RTR6;
}
