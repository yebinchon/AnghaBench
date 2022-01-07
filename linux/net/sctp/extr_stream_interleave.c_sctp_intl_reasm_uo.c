
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpq {TYPE_1__* asoc; } ;
struct sctp_ulpevent {int msg_flags; scalar_t__ mid; scalar_t__ fsn; int stream; } ;
struct sctp_stream_in {scalar_t__ mid_uo; scalar_t__ fsn_uo; scalar_t__ pd_mode_uo; } ;
struct TYPE_2__ {int stream; } ;


 int MSG_EOR ;
 int SCTP_DATA_FRAG_MASK ;
 int SCTP_DATA_NOT_FRAG ;
 struct sctp_ulpevent* sctp_intl_retrieve_partial_uo (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_intl_retrieve_reassembled_uo (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 int sctp_intl_store_reasm_uo (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 struct sctp_stream_in* sctp_stream_in (int *,int ) ;

__attribute__((used)) static struct sctp_ulpevent *sctp_intl_reasm_uo(struct sctp_ulpq *ulpq,
      struct sctp_ulpevent *event)
{
 struct sctp_ulpevent *retval = ((void*)0);
 struct sctp_stream_in *sin;

 if (SCTP_DATA_NOT_FRAG == (event->msg_flags & SCTP_DATA_FRAG_MASK)) {
  event->msg_flags |= MSG_EOR;
  return event;
 }

 sctp_intl_store_reasm_uo(ulpq, event);

 sin = sctp_stream_in(&ulpq->asoc->stream, event->stream);
 if (sin->pd_mode_uo && event->mid == sin->mid_uo &&
     event->fsn == sin->fsn_uo)
  retval = sctp_intl_retrieve_partial_uo(ulpq, event);

 if (!retval)
  retval = sctp_intl_retrieve_reassembled_uo(ulpq, event);

 return retval;
}
