
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tsnmap_iter {scalar_t__ start; } ;
struct sctp_tsnmap {scalar_t__ cumulative_tsn_ack_point; int len; int tsn_map; scalar_t__ base_tsn; int max_tsn_seen; } ;
typedef scalar_t__ __u16 ;


 scalar_t__ TSN_lte (int ,scalar_t__) ;
 int sctp_tsnmap_find_gap_ack (int ,scalar_t__,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int sctp_tsnmap_next_gap_ack(const struct sctp_tsnmap *map,
        struct sctp_tsnmap_iter *iter,
        __u16 *start, __u16 *end)
{
 int ended = 0;
 __u16 start_ = 0, end_ = 0, offset;


 if (TSN_lte(map->max_tsn_seen, iter->start))
  return 0;

 offset = iter->start - map->base_tsn;
 sctp_tsnmap_find_gap_ack(map->tsn_map, offset, map->len,
     &start_, &end_);


 if (start_ && !end_)
  end_ = map->len - 1;




 if (end_) {



  *start = start_ + 1;
  *end = end_ + 1;


  iter->start = map->cumulative_tsn_ack_point + *end + 1;
  ended = 1;
 }

 return ended;
}
