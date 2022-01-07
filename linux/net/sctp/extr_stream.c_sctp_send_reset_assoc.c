
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_stream {scalar_t__ outcnt; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_3__ {int reconf_capable; } ;
struct sctp_association {int strreset_enable; int strreset_outstanding; struct sctp_chunk* strreset_chunk; int outqueue; TYPE_1__ peer; struct sctp_stream stream; } ;
typedef scalar_t__ __u16 ;
struct TYPE_4__ {int state; } ;


 int EAGAIN ;
 int EINPROGRESS ;
 int ENOMEM ;
 int ENOPROTOOPT ;
 int SCTP_ENABLE_RESET_ASSOC_REQ ;
 TYPE_2__* SCTP_SO (struct sctp_stream*,scalar_t__) ;
 int SCTP_STREAM_CLOSED ;
 int SCTP_STREAM_OPEN ;
 int sctp_chunk_hold (struct sctp_chunk*) ;
 int sctp_chunk_put (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_strreset_tsnreq (struct sctp_association*) ;
 int sctp_outq_is_empty (int *) ;
 int sctp_send_reconf (struct sctp_association*,struct sctp_chunk*) ;

int sctp_send_reset_assoc(struct sctp_association *asoc)
{
 struct sctp_stream *stream = &asoc->stream;
 struct sctp_chunk *chunk = ((void*)0);
 int retval;
 __u16 i;

 if (!asoc->peer.reconf_capable ||
     !(asoc->strreset_enable & SCTP_ENABLE_RESET_ASSOC_REQ))
  return -ENOPROTOOPT;

 if (asoc->strreset_outstanding)
  return -EINPROGRESS;

 if (!sctp_outq_is_empty(&asoc->outqueue))
  return -EAGAIN;

 chunk = sctp_make_strreset_tsnreq(asoc);
 if (!chunk)
  return -ENOMEM;


 for (i = 0; i < stream->outcnt; i++)
  SCTP_SO(stream, i)->state = SCTP_STREAM_CLOSED;

 asoc->strreset_chunk = chunk;
 sctp_chunk_hold(asoc->strreset_chunk);

 retval = sctp_send_reconf(asoc, chunk);
 if (retval) {
  sctp_chunk_put(asoc->strreset_chunk);
  asoc->strreset_chunk = ((void*)0);

  for (i = 0; i < stream->outcnt; i++)
   SCTP_SO(stream, i)->state = SCTP_STREAM_OPEN;

  return retval;
 }

 asoc->strreset_outstanding = 1;

 return 0;
}
