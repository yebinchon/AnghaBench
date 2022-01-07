
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int transport; TYPE_1__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef scalar_t__ __u8 ;
struct TYPE_2__ {scalar_t__ type; } ;


 int GFP_ATOMIC ;
 scalar_t__ SCTP_CHUNK_FLAG_T ;
 int SCTP_CID_ABORT ;
 scalar_t__ SCTP_CID_INIT ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,scalar_t__,size_t const,int ) ;

struct sctp_chunk *sctp_make_abort(const struct sctp_association *asoc,
       const struct sctp_chunk *chunk,
       const size_t hint)
{
 struct sctp_chunk *retval;
 __u8 flags = 0;




 if (!asoc) {
  if (chunk && chunk->chunk_hdr &&
      chunk->chunk_hdr->type == SCTP_CID_INIT)
   flags = 0;
  else
   flags = SCTP_CHUNK_FLAG_T;
 }

 retval = sctp_make_control(asoc, SCTP_CID_ABORT, flags, hint,
       GFP_ATOMIC);
 if (retval && chunk)
  retval->transport = chunk->transport;

 return retval;
}
