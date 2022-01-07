
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tsnmap {int len; scalar_t__ num_dup_tsns; void* cumulative_tsn_ack_point; void* max_tsn_seen; void* base_tsn; int * tsn_map; } ;
typedef int gfp_t ;
typedef void* __u32 ;
typedef int __u16 ;


 int bitmap_zero (int *,int) ;
 int * kzalloc (int,int ) ;

struct sctp_tsnmap *sctp_tsnmap_init(struct sctp_tsnmap *map, __u16 len,
         __u32 initial_tsn, gfp_t gfp)
{
 if (!map->tsn_map) {
  map->tsn_map = kzalloc(len>>3, gfp);
  if (map->tsn_map == ((void*)0))
   return ((void*)0);

  map->len = len;
 } else {
  bitmap_zero(map->tsn_map, map->len);
 }


 map->base_tsn = initial_tsn;
 map->cumulative_tsn_ack_point = initial_tsn - 1;
 map->max_tsn_seen = map->cumulative_tsn_ack_point;
 map->num_dup_tsns = 0;

 return map;
}
