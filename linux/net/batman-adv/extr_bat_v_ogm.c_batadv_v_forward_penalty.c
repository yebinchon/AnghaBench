
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct batadv_priv {int hop_penalty; } ;
struct TYPE_2__ {int flags; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 int BATADV_FULL_DUPLEX ;
 struct batadv_hard_iface* BATADV_IF_DEFAULT ;
 int BATADV_TQ_MAX_VALUE ;
 int atomic_read (int *) ;

__attribute__((used)) static u32 batadv_v_forward_penalty(struct batadv_priv *bat_priv,
        struct batadv_hard_iface *if_incoming,
        struct batadv_hard_iface *if_outgoing,
        u32 throughput)
{
 int hop_penalty = atomic_read(&bat_priv->hop_penalty);
 int hop_penalty_max = BATADV_TQ_MAX_VALUE;


 if (if_outgoing == BATADV_IF_DEFAULT)
  return throughput;





 if (throughput > 10 &&
     if_incoming == if_outgoing &&
     !(if_incoming->bat_v.flags & BATADV_FULL_DUPLEX))
  return throughput / 2;


 return throughput * (hop_penalty_max - hop_penalty) / hop_penalty_max;
}
