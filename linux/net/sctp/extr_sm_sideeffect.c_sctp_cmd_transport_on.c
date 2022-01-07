
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_transport {scalar_t__ state; int rto_pending; scalar_t__ dst; scalar_t__ hb_sent; TYPE_1__* asoc; scalar_t__ error_count; } ;
struct sctp_sender_hb_info {scalar_t__ sent_at; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct TYPE_6__ {int transport_count; } ;
struct sctp_association {TYPE_3__ peer; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ overall_error_count; } ;


 int SCTP_HEARTBEAT_SUCCESS ;
 scalar_t__ SCTP_INACTIVE ;
 scalar_t__ SCTP_PF ;
 scalar_t__ SCTP_STATE_SHUTDOWN_PENDING ;
 int SCTP_TRANSPORT_UP ;
 scalar_t__ SCTP_UNCONFIRMED ;
 scalar_t__ jiffies ;
 int sctp_assoc_control_transport (struct sctp_association*,struct sctp_transport*,int ,int ) ;
 int sctp_transport_dst_confirm (struct sctp_transport*) ;
 int sctp_transport_immediate_rtx (struct sctp_transport*) ;
 int sctp_transport_reset_hb_timer (struct sctp_transport*) ;
 int sctp_transport_update_rto (struct sctp_transport*,scalar_t__) ;

__attribute__((used)) static void sctp_cmd_transport_on(struct sctp_cmd_seq *cmds,
      struct sctp_association *asoc,
      struct sctp_transport *t,
      struct sctp_chunk *chunk)
{
 struct sctp_sender_hb_info *hbinfo;
 int was_unconfirmed = 0;





 t->error_count = 0;
 if (t->asoc->state < SCTP_STATE_SHUTDOWN_PENDING)
  t->asoc->overall_error_count = 0;




 t->hb_sent = 0;




 if ((t->state == SCTP_INACTIVE) || (t->state == SCTP_UNCONFIRMED)) {
  was_unconfirmed = 1;
  sctp_assoc_control_transport(asoc, t, SCTP_TRANSPORT_UP,
          SCTP_HEARTBEAT_SUCCESS);
 }

 if (t->state == SCTP_PF)
  sctp_assoc_control_transport(asoc, t, SCTP_TRANSPORT_UP,
          SCTP_HEARTBEAT_SUCCESS);




 if (t->dst)
  sctp_transport_dst_confirm(t);
 if (t->rto_pending == 0)
  t->rto_pending = 1;

 hbinfo = (struct sctp_sender_hb_info *)chunk->skb->data;
 sctp_transport_update_rto(t, (jiffies - hbinfo->sent_at));


 sctp_transport_reset_hb_timer(t);

 if (was_unconfirmed && asoc->peer.transport_count == 1)
  sctp_transport_immediate_rtx(t);
}
