
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_forw_packet {int packet_len; unsigned long direct_link_flags; int num_packets; int skb; } ;


 unsigned long BIT (int ) ;
 int skb_put_data (int ,unsigned char const*,int) ;

__attribute__((used)) static void batadv_iv_ogm_aggregate(struct batadv_forw_packet *forw_packet_aggr,
        const unsigned char *packet_buff,
        int packet_len, bool direct_link)
{
 unsigned long new_direct_link_flag;

 skb_put_data(forw_packet_aggr->skb, packet_buff, packet_len);
 forw_packet_aggr->packet_len += packet_len;
 forw_packet_aggr->num_packets++;


 if (direct_link) {
  new_direct_link_flag = BIT(forw_packet_aggr->num_packets);
  forw_packet_aggr->direct_link_flags |= new_direct_link_flag;
 }
}
