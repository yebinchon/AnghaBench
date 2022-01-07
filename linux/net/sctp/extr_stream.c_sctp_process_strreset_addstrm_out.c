
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sctp_params {struct sctp_strreset_addstrm* v; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_transport {int reconf_timer; } ;
struct sctp_strreset_addstrm {int number_of_streams; int request_seq; } ;
struct sctp_stream {size_t incnt; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__ strreset_inseq; scalar_t__* strreset_result; int strreset_enable; TYPE_1__* strreset_chunk; int strreset_outstanding; int strreset_outseq; struct sctp_stream stream; } ;
typedef scalar_t__ __u32 ;
typedef size_t __u16 ;
struct TYPE_2__ {struct sctp_transport* transport; } ;


 int GFP_ATOMIC ;
 int SCTP_ENABLE_CHANGE_ASSOC_REQ ;
 scalar_t__ SCTP_MAX_STREAM ;
 int SCTP_PARAM_RESET_ADD_IN_STREAMS ;
 scalar_t__ SCTP_STRRESET_DENIED ;
 scalar_t__ SCTP_STRRESET_ERR_BAD_SEQNO ;
 scalar_t__ SCTP_STRRESET_ERR_IN_PROGRESS ;
 scalar_t__ SCTP_STRRESET_PERFORMED ;
 scalar_t__ TSN_lt (scalar_t__,scalar_t__) ;
 scalar_t__ del_timer (int *) ;
 scalar_t__ ntohl (int ) ;
 size_t ntohs (int ) ;
 int sctp_chunk_lookup_strreset_param (struct sctp_association*,int ,int ) ;
 int sctp_chunk_put (TYPE_1__*) ;
 struct sctp_chunk* sctp_make_strreset_resp (struct sctp_association*,scalar_t__,scalar_t__) ;
 scalar_t__ sctp_stream_alloc_in (struct sctp_stream*,scalar_t__,int ) ;
 int sctp_transport_put (struct sctp_transport*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_stream_change_event (struct sctp_association*,int ,size_t,int ,int ) ;
 int sctp_update_strreset_result (struct sctp_association*,scalar_t__) ;

struct sctp_chunk *sctp_process_strreset_addstrm_out(
    struct sctp_association *asoc,
    union sctp_params param,
    struct sctp_ulpevent **evp)
{
 struct sctp_strreset_addstrm *addstrm = param.v;
 struct sctp_stream *stream = &asoc->stream;
 __u32 result = SCTP_STRRESET_DENIED;
 __u32 request_seq, incnt;
 __u16 in, i;

 request_seq = ntohl(addstrm->request_seq);
 if (TSN_lt(asoc->strreset_inseq, request_seq) ||
     TSN_lt(request_seq, asoc->strreset_inseq - 2)) {
  result = SCTP_STRRESET_ERR_BAD_SEQNO;
  goto err;
 } else if (TSN_lt(request_seq, asoc->strreset_inseq)) {
  i = asoc->strreset_inseq - request_seq - 1;
  result = asoc->strreset_result[i];
  goto err;
 }
 asoc->strreset_inseq++;

 if (!(asoc->strreset_enable & SCTP_ENABLE_CHANGE_ASSOC_REQ))
  goto out;

 in = ntohs(addstrm->number_of_streams);
 incnt = stream->incnt + in;
 if (!in || incnt > SCTP_MAX_STREAM)
  goto out;

 if (sctp_stream_alloc_in(stream, incnt, GFP_ATOMIC))
  goto out;

 if (asoc->strreset_chunk) {
  if (!sctp_chunk_lookup_strreset_param(
   asoc, 0, SCTP_PARAM_RESET_ADD_IN_STREAMS)) {

   result = SCTP_STRRESET_ERR_IN_PROGRESS;
   goto out;
  }

  asoc->strreset_outstanding--;
  asoc->strreset_outseq++;

  if (!asoc->strreset_outstanding) {
   struct sctp_transport *t;

   t = asoc->strreset_chunk->transport;
   if (del_timer(&t->reconf_timer))
    sctp_transport_put(t);

   sctp_chunk_put(asoc->strreset_chunk);
   asoc->strreset_chunk = ((void*)0);
  }
 }

 stream->incnt = incnt;

 result = SCTP_STRRESET_PERFORMED;

 *evp = sctp_ulpevent_make_stream_change_event(asoc,
  0, ntohs(addstrm->number_of_streams), 0, GFP_ATOMIC);

out:
 sctp_update_strreset_result(asoc, result);
err:
 return sctp_make_strreset_resp(asoc, result, request_seq);
}
