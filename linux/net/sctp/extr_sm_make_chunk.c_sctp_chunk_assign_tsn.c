
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* data_hdr; } ;
struct sctp_chunk {int has_tsn; int asoc; TYPE_2__ subh; } ;
struct TYPE_3__ {int tsn; } ;


 int htonl (int ) ;
 int sctp_association_get_next_tsn (int ) ;

void sctp_chunk_assign_tsn(struct sctp_chunk *chunk)
{
 if (!chunk->has_tsn) {



  chunk->subh.data_hdr->tsn =
   htonl(sctp_association_get_next_tsn(chunk->asoc));
  chunk->has_tsn = 1;
 }
}
