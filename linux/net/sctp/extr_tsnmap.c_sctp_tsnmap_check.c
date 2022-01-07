
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sctp_tsnmap {scalar_t__ base_tsn; scalar_t__ len; int tsn_map; int cumulative_tsn_ack_point; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ SCTP_TSN_MAP_SIZE ;
 int TSN_lt (scalar_t__,scalar_t__) ;
 scalar_t__ TSN_lte (scalar_t__,int ) ;
 scalar_t__ test_bit (scalar_t__,int ) ;

int sctp_tsnmap_check(const struct sctp_tsnmap *map, __u32 tsn)
{
 u32 gap;


 if (TSN_lte(tsn, map->cumulative_tsn_ack_point))
  return 1;




 if (!TSN_lt(tsn, map->base_tsn + SCTP_TSN_MAP_SIZE))
  return -1;


 gap = tsn - map->base_tsn;


 if (gap < map->len && test_bit(gap, map->tsn_map))
  return 1;
 else
  return 0;
}
