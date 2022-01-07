
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int BATADV_MCAST_WANT_NO_RTR6 ;

__attribute__((used)) static inline u8
batadv_mcast_mla_rtr_flags_softif_get_ipv6(struct net_device *dev)
{
 return BATADV_MCAST_WANT_NO_RTR6;
}
