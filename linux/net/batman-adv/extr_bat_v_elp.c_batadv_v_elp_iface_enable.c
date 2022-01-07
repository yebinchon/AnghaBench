
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int elp_wq; int flags; int elp_seqno; int elp_skb; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;
struct batadv_elp_packet {int version; int packet_type; } ;
typedef int random_seqno ;
typedef int __be32 ;


 int BATADV_COMPAT_VERSION ;
 int BATADV_ELP ;
 size_t const BATADV_ELP_HLEN ;
 int BATADV_FULL_DUPLEX ;
 int BATADV_WARNING_DEFAULT ;
 int ENOMEM ;
 size_t const ETH_HLEN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 size_t const NET_IP_ALIGN ;
 int atomic_set (int *,int ) ;
 scalar_t__ batadv_is_wifi_hardif (struct batadv_hard_iface*) ;
 int batadv_v_elp_periodic_work ;
 int batadv_v_elp_start_timer (struct batadv_hard_iface*) ;
 int dev_alloc_skb (size_t) ;
 int get_random_bytes (int *,int) ;
 unsigned char* skb_put_zero (int ,size_t const) ;
 int skb_reserve (int ,size_t const) ;

int batadv_v_elp_iface_enable(struct batadv_hard_iface *hard_iface)
{
 static const size_t tvlv_padding = sizeof(__be32);
 struct batadv_elp_packet *elp_packet;
 unsigned char *elp_buff;
 u32 random_seqno;
 size_t size;
 int res = -ENOMEM;

 size = ETH_HLEN + NET_IP_ALIGN + BATADV_ELP_HLEN + tvlv_padding;
 hard_iface->bat_v.elp_skb = dev_alloc_skb(size);
 if (!hard_iface->bat_v.elp_skb)
  goto out;

 skb_reserve(hard_iface->bat_v.elp_skb, ETH_HLEN + NET_IP_ALIGN);
 elp_buff = skb_put_zero(hard_iface->bat_v.elp_skb,
    BATADV_ELP_HLEN + tvlv_padding);
 elp_packet = (struct batadv_elp_packet *)elp_buff;

 elp_packet->packet_type = BATADV_ELP;
 elp_packet->version = BATADV_COMPAT_VERSION;


 get_random_bytes(&random_seqno, sizeof(random_seqno));
 atomic_set(&hard_iface->bat_v.elp_seqno, random_seqno);


 hard_iface->bat_v.flags |= BATADV_FULL_DUPLEX;


 hard_iface->bat_v.flags &= ~BATADV_WARNING_DEFAULT;

 if (batadv_is_wifi_hardif(hard_iface))
  hard_iface->bat_v.flags &= ~BATADV_FULL_DUPLEX;

 INIT_DELAYED_WORK(&hard_iface->bat_v.elp_wq,
     batadv_v_elp_periodic_work);
 batadv_v_elp_start_timer(hard_iface);
 res = 0;

out:
 return res;
}
