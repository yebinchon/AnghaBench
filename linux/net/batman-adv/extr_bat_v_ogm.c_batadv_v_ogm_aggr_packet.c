
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_ogm2_packet {int tvlv_len; } ;


 int BATADV_MAX_AGGREGATION_BYTES ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static bool
batadv_v_ogm_aggr_packet(int buff_pos, int packet_len,
    const struct batadv_ogm2_packet *ogm2_packet)
{
 int next_buff_pos = 0;


 next_buff_pos += buff_pos + sizeof(*ogm2_packet);
 if (next_buff_pos > packet_len)
  return 0;


 next_buff_pos += ntohs(ogm2_packet->tvlv_len);

 return (next_buff_pos <= packet_len) &&
        (next_buff_pos <= BATADV_MAX_AGGREGATION_BYTES);
}
