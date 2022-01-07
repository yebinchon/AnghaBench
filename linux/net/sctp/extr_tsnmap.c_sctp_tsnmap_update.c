
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sctp_tsnmap {unsigned long base_tsn; int len; int tsn_map; scalar_t__ cumulative_tsn_ack_point; scalar_t__ max_tsn_seen; } ;


 int bitmap_shift_right (int ,int ,unsigned long,int ) ;
 unsigned long find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static void sctp_tsnmap_update(struct sctp_tsnmap *map)
{
 u16 len;
 unsigned long zero_bit;


 len = map->max_tsn_seen - map->cumulative_tsn_ack_point;
 zero_bit = find_first_zero_bit(map->tsn_map, len);
 if (!zero_bit)
  return;

 map->base_tsn += zero_bit;
 map->cumulative_tsn_ack_point += zero_bit;

 bitmap_shift_right(map->tsn_map, map->tsn_map, zero_bit, map->len);
}
