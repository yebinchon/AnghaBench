
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tsnmap_iter {scalar_t__ start; } ;
struct sctp_tsnmap {scalar_t__ cumulative_tsn_ack_point; } ;



__attribute__((used)) static void sctp_tsnmap_iter_init(const struct sctp_tsnmap *map,
      struct sctp_tsnmap_iter *iter)
{

 iter->start = map->cumulative_tsn_ack_point + 1;
}
