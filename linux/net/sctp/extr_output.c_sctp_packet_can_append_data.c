
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


struct sctp_transport {size_t flight_size; size_t cwnd; int pathmtu; struct sctp_association* asoc; } ;
struct sctp_packet {int overhead; struct sctp_transport* transport; } ;
struct sctp_outq {size_t outstanding_bytes; int out_qlen; } ;
struct sctp_chunk {scalar_t__ fast_retransmit; TYPE_5__* msg; TYPE_4__* asoc; TYPE_3__* skb; } ;
struct TYPE_8__ {int sk; } ;
struct TYPE_7__ {size_t rwnd; } ;
struct sctp_association {int force_delay; TYPE_2__ base; TYPE_1__ peer; struct sctp_outq outqueue; } ;
typedef enum sctp_xmit { ____Placeholder_sctp_xmit } sctp_xmit ;
struct TYPE_12__ {scalar_t__ nodelay; } ;
struct TYPE_11__ {int can_delay; } ;
struct TYPE_10__ {int stream; } ;
struct TYPE_9__ {int len; } ;


 int ESTABLISHED ;
 scalar_t__ SCTP_NEED_FRTX ;
 int SCTP_XMIT_DELAY ;
 int SCTP_XMIT_OK ;
 int SCTP_XMIT_RWND_FULL ;
 size_t sctp_data_size (struct sctp_chunk*) ;
 int sctp_datachk_len (int *) ;
 int sctp_packet_empty (struct sctp_packet*) ;
 TYPE_6__* sctp_sk (int ) ;
 int sctp_state (struct sctp_association*,int ) ;

__attribute__((used)) static enum sctp_xmit sctp_packet_can_append_data(struct sctp_packet *packet,
        struct sctp_chunk *chunk)
{
 size_t datasize, rwnd, inflight, flight_size;
 struct sctp_transport *transport = packet->transport;
 struct sctp_association *asoc = transport->asoc;
 struct sctp_outq *q = &asoc->outqueue;
 rwnd = asoc->peer.rwnd;
 inflight = q->outstanding_bytes;
 flight_size = transport->flight_size;

 datasize = sctp_data_size(chunk);

 if (datasize > rwnd && inflight > 0)



  return SCTP_XMIT_RWND_FULL;
 if (chunk->fast_retransmit != SCTP_NEED_FRTX &&
     flight_size >= transport->cwnd)
  return SCTP_XMIT_RWND_FULL;







 if ((sctp_sk(asoc->base.sk)->nodelay || inflight == 0) &&
     !asoc->force_delay)

  return SCTP_XMIT_OK;

 if (!sctp_packet_empty(packet))

  return SCTP_XMIT_OK;

 if (!sctp_state(asoc, ESTABLISHED))
  return SCTP_XMIT_OK;




 if (chunk->skb->len + q->out_qlen > transport->pathmtu -
     packet->overhead - sctp_datachk_len(&chunk->asoc->stream) - 4)

  return SCTP_XMIT_OK;


 if (!chunk->msg->can_delay)
  return SCTP_XMIT_OK;


 return SCTP_XMIT_DELAY;
}
