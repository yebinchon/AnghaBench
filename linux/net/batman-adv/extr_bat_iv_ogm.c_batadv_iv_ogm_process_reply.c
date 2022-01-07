
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {int ogm_cnt_lock; } ;
struct batadv_orig_node {TYPE_3__ bat_iv; } ;
struct TYPE_5__ {int bcast_own; int bcast_own_sum; } ;
struct batadv_orig_ifinfo {TYPE_2__ bat_iv; } ;
struct batadv_ogm_packet {int flags; int seqno; int orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {int dev_addr; } ;


 int BATADV_DIRECTLINK ;
 int BATADV_TQ_LOCAL_WINDOW_SIZE ;
 int batadv_compare_eth (int ,int ) ;
 struct batadv_orig_ifinfo* batadv_orig_ifinfo_get (struct batadv_orig_node*,struct batadv_hard_iface*) ;
 int batadv_orig_ifinfo_put (struct batadv_orig_ifinfo*) ;
 int batadv_set_bit (int ,scalar_t__) ;
 int bitmap_weight (int ,int ) ;
 scalar_t__ ntohl (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_iv_ogm_process_reply(struct batadv_ogm_packet *ogm_packet,
     struct batadv_hard_iface *if_incoming,
     struct batadv_orig_node *orig_node,
     u32 if_incoming_seqno)
{
 struct batadv_orig_ifinfo *orig_ifinfo;
 s32 bit_pos;
 u8 *weight;




 if (!(ogm_packet->flags & BATADV_DIRECTLINK))
  return;

 if (!batadv_compare_eth(if_incoming->net_dev->dev_addr,
    ogm_packet->orig))
  return;

 orig_ifinfo = batadv_orig_ifinfo_get(orig_node, if_incoming);
 if (!orig_ifinfo)
  return;


 spin_lock_bh(&orig_node->bat_iv.ogm_cnt_lock);
 bit_pos = if_incoming_seqno - 2;
 bit_pos -= ntohl(ogm_packet->seqno);
 batadv_set_bit(orig_ifinfo->bat_iv.bcast_own, bit_pos);
 weight = &orig_ifinfo->bat_iv.bcast_own_sum;
 *weight = bitmap_weight(orig_ifinfo->bat_iv.bcast_own,
    BATADV_TQ_LOCAL_WINDOW_SIZE);
 spin_unlock_bh(&orig_node->bat_iv.ogm_cnt_lock);

 batadv_orig_ifinfo_put(orig_ifinfo);
}
