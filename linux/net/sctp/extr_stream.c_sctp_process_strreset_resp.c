
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


union sctp_params {TYPE_3__* p; struct sctp_strreset_resp* v; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_transport {int reconf_timer; } ;
struct sctp_strreset_resptsn {int receivers_next_tsn; int senders_next_tsn; } ;
struct sctp_strreset_resp {int result; int response_seq; } ;
struct TYPE_9__ {int length; } ;
struct sctp_strreset_outreq {TYPE_1__ param_hdr; int * list_of_streams; } ;
struct TYPE_10__ {int length; } ;
struct sctp_strreset_inreq {TYPE_2__ param_hdr; int * list_of_streams; } ;
struct sctp_strreset_addstrm {int number_of_streams; } ;
struct sctp_stream_out {void* state; scalar_t__ mid_uo; scalar_t__ mid; } ;
struct sctp_stream {int outcnt; int incnt; TYPE_4__* si; } ;
struct sctp_paramhdr {scalar_t__ type; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_14__ {int out_chunk_list; } ;
struct TYPE_13__ {int tsn_map; } ;
struct sctp_association {TYPE_7__* strreset_chunk; int strreset_outstanding; int strreset_outseq; scalar_t__ ctsn_ack_point; scalar_t__ adv_peer_ack_point; scalar_t__ next_tsn; TYPE_6__ outqueue; TYPE_5__ peer; int ulpq; struct sctp_stream stream; } ;
typedef scalar_t__ __u32 ;
typedef int __u16 ;
typedef int __be16 ;
struct TYPE_16__ {scalar_t__ mid; } ;
struct TYPE_15__ {struct sctp_transport* transport; } ;
struct TYPE_12__ {int (* report_ftsn ) (int *,scalar_t__) ;} ;
struct TYPE_11__ {int length; } ;


 int GFP_ATOMIC ;
 int LIST_HEAD (int ) ;
 scalar_t__ SCTP_PARAM_RESET_ADD_IN_STREAMS ;
 scalar_t__ SCTP_PARAM_RESET_ADD_OUT_STREAMS ;
 scalar_t__ SCTP_PARAM_RESET_IN_REQUEST ;
 scalar_t__ SCTP_PARAM_RESET_OUT_REQUEST ;
 scalar_t__ SCTP_PARAM_RESET_TSN_REQUEST ;
 TYPE_8__* SCTP_SI (struct sctp_stream*,int) ;
 struct sctp_stream_out* SCTP_SO (struct sctp_stream*,int) ;
 void* SCTP_STREAM_OPEN ;
 int SCTP_STREAM_RESET_DENIED ;
 int SCTP_STREAM_RESET_FAILED ;
 int SCTP_STREAM_RESET_INCOMING_SSN ;
 int SCTP_STREAM_RESET_OUTGOING_SSN ;
 scalar_t__ SCTP_STRRESET_DENIED ;
 scalar_t__ SCTP_STRRESET_IN_PROGRESS ;
 scalar_t__ SCTP_STRRESET_PERFORMED ;
 int SCTP_TSN_MAP_INITIAL ;
 scalar_t__ del_timer (int *) ;
 int list_splice_init (int *,int *) ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;
 struct sctp_paramhdr* sctp_chunk_lookup_strreset_param (struct sctp_association*,int ,int ) ;
 int sctp_chunk_put (TYPE_7__*) ;
 int sctp_outq_free (TYPE_6__*) ;
 int sctp_transport_put (struct sctp_transport*) ;
 scalar_t__ sctp_tsnmap_get_max_tsn_seen (int *) ;
 int sctp_tsnmap_init (int *,int ,scalar_t__,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_reset_event (struct sctp_association*,int,scalar_t__,scalar_t__,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_stream_change_event (struct sctp_association*,int,int,int,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_stream_reset_event (struct sctp_association*,int,int,int *,int ) ;
 int stub1 (int *,scalar_t__) ;
 int temp ;

struct sctp_chunk *sctp_process_strreset_resp(
    struct sctp_association *asoc,
    union sctp_params param,
    struct sctp_ulpevent **evp)
{
 struct sctp_stream *stream = &asoc->stream;
 struct sctp_strreset_resp *resp = param.v;
 struct sctp_transport *t;
 __u16 i, nums, flags = 0;
 struct sctp_paramhdr *req;
 __u32 result;

 req = sctp_chunk_lookup_strreset_param(asoc, resp->response_seq, 0);
 if (!req)
  return ((void*)0);

 result = ntohl(resp->result);
 if (result != SCTP_STRRESET_PERFORMED) {

  if (result == SCTP_STRRESET_IN_PROGRESS)
   return ((void*)0);
  else if (result == SCTP_STRRESET_DENIED)
   flags = SCTP_STREAM_RESET_DENIED;
  else
   flags = SCTP_STREAM_RESET_FAILED;
 }

 if (req->type == SCTP_PARAM_RESET_OUT_REQUEST) {
  struct sctp_strreset_outreq *outreq;
  __be16 *str_p;

  outreq = (struct sctp_strreset_outreq *)req;
  str_p = outreq->list_of_streams;
  nums = (ntohs(outreq->param_hdr.length) - sizeof(*outreq)) /
         sizeof(__u16);

  if (result == SCTP_STRRESET_PERFORMED) {
   struct sctp_stream_out *sout;
   if (nums) {
    for (i = 0; i < nums; i++) {
     sout = SCTP_SO(stream, ntohs(str_p[i]));
     sout->mid = 0;
     sout->mid_uo = 0;
    }
   } else {
    for (i = 0; i < stream->outcnt; i++) {
     sout = SCTP_SO(stream, i);
     sout->mid = 0;
     sout->mid_uo = 0;
    }
   }
  }

  flags |= SCTP_STREAM_RESET_OUTGOING_SSN;

  for (i = 0; i < stream->outcnt; i++)
   SCTP_SO(stream, i)->state = SCTP_STREAM_OPEN;

  *evp = sctp_ulpevent_make_stream_reset_event(asoc, flags,
   nums, str_p, GFP_ATOMIC);
 } else if (req->type == SCTP_PARAM_RESET_IN_REQUEST) {
  struct sctp_strreset_inreq *inreq;
  __be16 *str_p;


  if (result == SCTP_STRRESET_PERFORMED)
   return ((void*)0);

  inreq = (struct sctp_strreset_inreq *)req;
  str_p = inreq->list_of_streams;
  nums = (ntohs(inreq->param_hdr.length) - sizeof(*inreq)) /
         sizeof(__u16);

  flags |= SCTP_STREAM_RESET_INCOMING_SSN;

  *evp = sctp_ulpevent_make_stream_reset_event(asoc, flags,
   nums, str_p, GFP_ATOMIC);
 } else if (req->type == SCTP_PARAM_RESET_TSN_REQUEST) {
  struct sctp_strreset_resptsn *resptsn;
  __u32 stsn, rtsn;


  if (ntohs(param.p->length) != sizeof(*resptsn))
   return ((void*)0);

  resptsn = (struct sctp_strreset_resptsn *)resp;
  stsn = ntohl(resptsn->senders_next_tsn);
  rtsn = ntohl(resptsn->receivers_next_tsn);

  if (result == SCTP_STRRESET_PERFORMED) {
   __u32 mtsn = sctp_tsnmap_get_max_tsn_seen(
      &asoc->peer.tsn_map);
   LIST_HEAD(temp);

   asoc->stream.si->report_ftsn(&asoc->ulpq, mtsn);

   sctp_tsnmap_init(&asoc->peer.tsn_map,
      SCTP_TSN_MAP_INITIAL,
      stsn, GFP_ATOMIC);





   list_splice_init(&asoc->outqueue.out_chunk_list, &temp);
   sctp_outq_free(&asoc->outqueue);
   list_splice_init(&temp, &asoc->outqueue.out_chunk_list);

   asoc->next_tsn = rtsn;
   asoc->ctsn_ack_point = asoc->next_tsn - 1;
   asoc->adv_peer_ack_point = asoc->ctsn_ack_point;

   for (i = 0; i < stream->outcnt; i++) {
    SCTP_SO(stream, i)->mid = 0;
    SCTP_SO(stream, i)->mid_uo = 0;
   }
   for (i = 0; i < stream->incnt; i++)
    SCTP_SI(stream, i)->mid = 0;
  }

  for (i = 0; i < stream->outcnt; i++)
   SCTP_SO(stream, i)->state = SCTP_STREAM_OPEN;

  *evp = sctp_ulpevent_make_assoc_reset_event(asoc, flags,
   stsn, rtsn, GFP_ATOMIC);
 } else if (req->type == SCTP_PARAM_RESET_ADD_OUT_STREAMS) {
  struct sctp_strreset_addstrm *addstrm;
  __u16 number;

  addstrm = (struct sctp_strreset_addstrm *)req;
  nums = ntohs(addstrm->number_of_streams);
  number = stream->outcnt - nums;

  if (result == SCTP_STRRESET_PERFORMED)
   for (i = number; i < stream->outcnt; i++)
    SCTP_SO(stream, i)->state = SCTP_STREAM_OPEN;
  else
   stream->outcnt = number;

  *evp = sctp_ulpevent_make_stream_change_event(asoc, flags,
   0, nums, GFP_ATOMIC);
 } else if (req->type == SCTP_PARAM_RESET_ADD_IN_STREAMS) {
  struct sctp_strreset_addstrm *addstrm;




  if (result == SCTP_STRRESET_PERFORMED)
   return ((void*)0);

  addstrm = (struct sctp_strreset_addstrm *)req;
  nums = ntohs(addstrm->number_of_streams);

  *evp = sctp_ulpevent_make_stream_change_event(asoc, flags,
   nums, 0, GFP_ATOMIC);
 }

 asoc->strreset_outstanding--;
 asoc->strreset_outseq++;


 if (!asoc->strreset_outstanding) {
  t = asoc->strreset_chunk->transport;
  if (del_timer(&t->reconf_timer))
   sctp_transport_put(t);

  sctp_chunk_put(asoc->strreset_chunk);
  asoc->strreset_chunk = ((void*)0);
 }

 return ((void*)0);
}
