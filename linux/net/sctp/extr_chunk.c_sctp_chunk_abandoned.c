
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sctp_stream_out {TYPE_4__* ext; } ;
struct TYPE_11__ {scalar_t__ sinfo_timetolive; int sinfo_flags; int sinfo_stream; } ;
struct sctp_chunk {scalar_t__ sent_count; TYPE_6__* msg; TYPE_5__ sinfo; TYPE_3__* asoc; TYPE_2__* chunk_hdr; int has_tsn; } ;
struct TYPE_12__ {int abandoned; scalar_t__ expires_at; } ;
struct TYPE_10__ {int * abandoned_sent; int * abandoned_unsent; } ;
struct TYPE_7__ {int prsctp_capable; } ;
struct TYPE_9__ {int * abandoned_sent; int stream; int * abandoned_unsent; TYPE_1__ peer; } ;
struct TYPE_8__ {int flags; } ;


 int RTX ;
 int SCTP_DATA_FIRST_FRAG ;
 size_t SCTP_PR_INDEX (int ) ;
 int SCTP_PR_POLICY (int ) ;
 scalar_t__ SCTP_PR_RTX_ENABLED (int ) ;
 scalar_t__ SCTP_PR_TTL_ENABLED (int ) ;
 struct sctp_stream_out* SCTP_SO (int *,int ) ;
 int TTL ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

int sctp_chunk_abandoned(struct sctp_chunk *chunk)
{
 if (!chunk->asoc->peer.prsctp_capable)
  return 0;

 if (chunk->msg->abandoned)
  return 1;

 if (!chunk->has_tsn &&
     !(chunk->chunk_hdr->flags & SCTP_DATA_FIRST_FRAG))
  return 0;

 if (SCTP_PR_TTL_ENABLED(chunk->sinfo.sinfo_flags) &&
     time_after(jiffies, chunk->msg->expires_at)) {
  struct sctp_stream_out *streamout =
   SCTP_SO(&chunk->asoc->stream,
    chunk->sinfo.sinfo_stream);

  if (chunk->sent_count) {
   chunk->asoc->abandoned_sent[SCTP_PR_INDEX(TTL)]++;
   streamout->ext->abandoned_sent[SCTP_PR_INDEX(TTL)]++;
  } else {
   chunk->asoc->abandoned_unsent[SCTP_PR_INDEX(TTL)]++;
   streamout->ext->abandoned_unsent[SCTP_PR_INDEX(TTL)]++;
  }
  chunk->msg->abandoned = 1;
  return 1;
 } else if (SCTP_PR_RTX_ENABLED(chunk->sinfo.sinfo_flags) &&
     chunk->sent_count > chunk->sinfo.sinfo_timetolive) {
  struct sctp_stream_out *streamout =
   SCTP_SO(&chunk->asoc->stream,
    chunk->sinfo.sinfo_stream);

  chunk->asoc->abandoned_sent[SCTP_PR_INDEX(RTX)]++;
  streamout->ext->abandoned_sent[SCTP_PR_INDEX(RTX)]++;
  chunk->msg->abandoned = 1;
  return 1;
 } else if (!SCTP_PR_POLICY(chunk->sinfo.sinfo_flags) &&
     chunk->msg->expires_at &&
     time_after(jiffies, chunk->msg->expires_at)) {
  chunk->msg->abandoned = 1;
  return 1;
 }


 return 0;
}
