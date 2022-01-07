
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct batadv_forw_packet {TYPE_2__* if_outgoing; TYPE_1__* if_incoming; } ;
struct TYPE_4__ {struct net_device* soft_iface; } ;
struct TYPE_3__ {scalar_t__ if_status; struct net_device* soft_iface; } ;


 scalar_t__ BATADV_IF_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int batadv_iv_ogm_send_to_if (struct batadv_forw_packet*,TYPE_2__*) ;
 int pr_err (char*) ;

__attribute__((used)) static void batadv_iv_ogm_emit(struct batadv_forw_packet *forw_packet)
{
 struct net_device *soft_iface;

 if (!forw_packet->if_incoming) {
  pr_err("Error - can't forward packet: incoming iface not specified\n");
  return;
 }

 soft_iface = forw_packet->if_incoming->soft_iface;

 if (WARN_ON(!forw_packet->if_outgoing))
  return;

 if (WARN_ON(forw_packet->if_outgoing->soft_iface != soft_iface))
  return;

 if (forw_packet->if_incoming->if_status != BATADV_IF_ACTIVE)
  return;


 batadv_iv_ogm_send_to_if(forw_packet, forw_packet->if_outgoing);
}
