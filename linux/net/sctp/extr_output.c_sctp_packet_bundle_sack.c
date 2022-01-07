
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sctp_packet {TYPE_1__* transport; int has_cookie_echo; int has_sack; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_8__ {scalar_t__ sack_generation; scalar_t__ sack_needed; } ;
struct TYPE_7__ {int octrlchunks; } ;
struct TYPE_6__ {int sk; } ;
struct sctp_association {TYPE_4__ peer; TYPE_3__ stats; TYPE_2__ base; int rwnd; int a_rwnd; struct timer_list* timers; } ;
typedef enum sctp_xmit { ____Placeholder_sctp_xmit } sctp_xmit ;
struct TYPE_5__ {scalar_t__ sack_generation; struct sctp_association* asoc; } ;


 size_t SCTP_EVENT_TIMEOUT_SACK ;
 int SCTP_INC_STATS (int ,int ) ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_XMIT_OK ;
 int __sctp_packet_append_chunk (struct sctp_packet*,struct sctp_chunk*) ;
 scalar_t__ del_timer (struct timer_list*) ;
 int sctp_association_put (struct sctp_association*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 scalar_t__ sctp_chunk_is_data (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_sack (struct sctp_association*) ;
 int sock_net (int ) ;
 scalar_t__ timer_pending (struct timer_list*) ;

__attribute__((used)) static enum sctp_xmit sctp_packet_bundle_sack(struct sctp_packet *pkt,
           struct sctp_chunk *chunk)
{
 enum sctp_xmit retval = SCTP_XMIT_OK;




 if (sctp_chunk_is_data(chunk) && !pkt->has_sack &&
     !pkt->has_cookie_echo) {
  struct sctp_association *asoc;
  struct timer_list *timer;
  asoc = pkt->transport->asoc;
  timer = &asoc->timers[SCTP_EVENT_TIMEOUT_SACK];


  if (timer_pending(timer)) {
   struct sctp_chunk *sack;

   if (pkt->transport->sack_generation !=
       pkt->transport->asoc->peer.sack_generation)
    return retval;

   asoc->a_rwnd = asoc->rwnd;
   sack = sctp_make_sack(asoc);
   if (sack) {
    retval = __sctp_packet_append_chunk(pkt, sack);
    if (retval != SCTP_XMIT_OK) {
     sctp_chunk_free(sack);
     goto out;
    }
    SCTP_INC_STATS(sock_net(asoc->base.sk),
            SCTP_MIB_OUTCTRLCHUNKS);
    asoc->stats.octrlchunks++;
    asoc->peer.sack_needed = 0;
    if (del_timer(timer))
     sctp_association_put(asoc);
   }
  }
 }
out:
 return retval;
}
