
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


struct sctp_transport {TYPE_6__* asoc; } ;
struct sctp_outq {int fast_rtx; TYPE_5__* asoc; } ;
struct net {int dummy; } ;
typedef enum sctp_retransmit_reason { ____Placeholder_sctp_retransmit_reason } sctp_retransmit_reason ;
struct TYPE_8__ {struct sctp_transport* retran_path; } ;
struct TYPE_12__ {int init_retries; int unack_data; int rtx_data_chunks; TYPE_2__ peer; } ;
struct TYPE_10__ {TYPE_3__* si; } ;
struct TYPE_7__ {int sk; } ;
struct TYPE_11__ {int ctsn_ack_point; TYPE_4__ stream; TYPE_1__ base; } ;
struct TYPE_9__ {int (* generate_ftsn ) (struct sctp_outq*,int ) ;} ;


 int BUG () ;
 int GFP_ATOMIC ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_LOWER_CWND_FAST_RTX ;
 int SCTP_LOWER_CWND_T3_RTX ;
 int SCTP_MIB_FAST_RETRANSMITS ;
 int SCTP_MIB_PMTUD_RETRANSMITS ;
 int SCTP_MIB_T1_RETRANSMITS ;
 int SCTP_MIB_T3_RETRANSMITS ;




 int sctp_assoc_update_retran_path (TYPE_6__*) ;
 int sctp_outq_flush (struct sctp_outq*,int,int ) ;
 int sctp_retransmit_mark (struct sctp_outq*,struct sctp_transport*,int) ;
 int sctp_transport_lower_cwnd (struct sctp_transport*,int ) ;
 struct net* sock_net (int ) ;
 int stub1 (struct sctp_outq*,int ) ;

void sctp_retransmit(struct sctp_outq *q, struct sctp_transport *transport,
       enum sctp_retransmit_reason reason)
{
 struct net *net = sock_net(q->asoc->base.sk);

 switch (reason) {
 case 128:
  SCTP_INC_STATS(net, SCTP_MIB_T3_RETRANSMITS);
  sctp_transport_lower_cwnd(transport, SCTP_LOWER_CWND_T3_RTX);



  if (transport == transport->asoc->peer.retran_path)
   sctp_assoc_update_retran_path(transport->asoc);
  transport->asoc->rtx_data_chunks +=
   transport->asoc->unack_data;
  break;
 case 131:
  SCTP_INC_STATS(net, SCTP_MIB_FAST_RETRANSMITS);
  sctp_transport_lower_cwnd(transport, SCTP_LOWER_CWND_FAST_RTX);
  q->fast_rtx = 1;
  break;
 case 130:
  SCTP_INC_STATS(net, SCTP_MIB_PMTUD_RETRANSMITS);
  break;
 case 129:
  SCTP_INC_STATS(net, SCTP_MIB_T1_RETRANSMITS);
  transport->asoc->init_retries++;
  break;
 default:
  BUG();
 }

 sctp_retransmit_mark(q, transport, reason);





 if (reason == 128)
  q->asoc->stream.si->generate_ftsn(q, q->asoc->ctsn_ack_point);





 if (reason != 131)
  sctp_outq_flush(q, 1, GFP_ATOMIC);
}
