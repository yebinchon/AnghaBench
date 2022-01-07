
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sctp_tsnmap {int tsn_map; scalar_t__ base_tsn; scalar_t__ len; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ TSN_lt (scalar_t__,scalar_t__) ;
 int clear_bit (scalar_t__,int ) ;

void sctp_tsnmap_renege(struct sctp_tsnmap *map, __u32 tsn)
{
 u32 gap;

 if (TSN_lt(tsn, map->base_tsn))
  return;

 if (!TSN_lt(tsn, map->base_tsn + map->len))
  return;

 gap = tsn - map->base_tsn;


 clear_bit(gap, map->tsn_map);
}
