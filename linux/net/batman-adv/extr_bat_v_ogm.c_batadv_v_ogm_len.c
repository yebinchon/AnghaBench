
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct batadv_ogm2_packet {int tvlv_len; } ;


 unsigned int BATADV_OGM2_HLEN ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static unsigned int batadv_v_ogm_len(struct sk_buff *skb)
{
 struct batadv_ogm2_packet *ogm_packet;

 ogm_packet = (struct batadv_ogm2_packet *)skb->data;
 return BATADV_OGM2_HLEN + ntohs(ogm_packet->tvlv_len);
}
