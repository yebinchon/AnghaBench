
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_stream {int dummy; } ;
struct TYPE_5__ {TYPE_4__* idata_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; TYPE_3__* asoc; TYPE_2__* chunk_hdr; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_8__ {int mid; } ;
struct TYPE_7__ {struct sctp_stream stream; } ;
struct TYPE_6__ {scalar_t__ type; int flags; } ;


 int MID_lt (int ,int ) ;
 scalar_t__ SCTP_CID_I_DATA ;
 int SCTP_DATA_UNORDERED ;
 int in ;
 int ntohl (int ) ;
 int sctp_chunk_stream_no (struct sctp_chunk*) ;
 int sctp_mid_peek (struct sctp_stream*,int ,int ) ;

__attribute__((used)) static bool sctp_validate_idata(struct sctp_chunk *chunk)
{
 struct sctp_stream *stream;
 __u32 mid;
 __u16 sid;

 if (chunk->chunk_hdr->type != SCTP_CID_I_DATA)
  return 0;

 if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED)
  return 1;

 stream = &chunk->asoc->stream;
 sid = sctp_chunk_stream_no(chunk);
 mid = ntohl(chunk->subh.idata_hdr->mid);

 return !MID_lt(mid, sctp_mid_peek(stream, in, sid));
}
