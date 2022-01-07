
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpq {TYPE_1__* asoc; } ;
struct sctp_stream_in {int mid; scalar_t__ pd_mode; int mid_uo; scalar_t__ pd_mode_uo; } ;
struct sctp_stream {scalar_t__ incnt; } ;
typedef int gfp_t ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {struct sctp_stream stream; } ;


 struct sctp_stream_in* SCTP_SI (struct sctp_stream*,scalar_t__) ;
 int in ;
 int sctp_intl_reap_ordered (struct sctp_ulpq*,scalar_t__) ;
 int sctp_intl_stream_abort_pd (struct sctp_ulpq*,scalar_t__,int ,int,int ) ;
 int sctp_mid_skip (struct sctp_stream*,int ,scalar_t__,int ) ;
 int sctp_ulpq_flush (struct sctp_ulpq*) ;

__attribute__((used)) static void sctp_intl_abort_pd(struct sctp_ulpq *ulpq, gfp_t gfp)
{
 struct sctp_stream *stream = &ulpq->asoc->stream;
 __u16 sid;

 for (sid = 0; sid < stream->incnt; sid++) {
  struct sctp_stream_in *sin = SCTP_SI(stream, sid);
  __u32 mid;

  if (sin->pd_mode_uo) {
   sin->pd_mode_uo = 0;

   mid = sin->mid_uo;
   sctp_intl_stream_abort_pd(ulpq, sid, mid, 0x1, gfp);
  }

  if (sin->pd_mode) {
   sin->pd_mode = 0;

   mid = sin->mid;
   sctp_intl_stream_abort_pd(ulpq, sid, mid, 0, gfp);
   sctp_mid_skip(stream, in, sid, mid);

   sctp_intl_reap_ordered(ulpq, sid);
  }
 }


 sctp_ulpq_flush(ulpq);
}
