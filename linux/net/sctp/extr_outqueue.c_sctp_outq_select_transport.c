
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_transport {int state; int send_ready; int packet; int ipaddr; } ;
struct sctp_flush_ctx {struct sctp_transport* transport; TYPE_4__* asoc; int * packet; int transport_list; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; int dest; struct sctp_transport* transport; } ;
typedef int __u8 ;
struct TYPE_6__ {int init_tag; } ;
struct TYPE_7__ {int ecn_capable; TYPE_2__ i; struct sctp_transport* active_path; } ;
struct TYPE_8__ {TYPE_3__ peer; } ;
struct TYPE_5__ {int type; } ;


 int SCTP_CID_ASCONF_ACK ;
 int SCTP_CID_HEARTBEAT ;
 int SCTP_CID_HEARTBEAT_ACK ;



 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 struct sctp_transport* sctp_assoc_lookup_paddr (TYPE_4__*,int *) ;
 int sctp_chunk_is_data (struct sctp_chunk*) ;
 scalar_t__ sctp_cmp_addr_exact (int *,int *) ;
 int sctp_packet_config (int *,int ,int ) ;
 int sctp_transport_burst_limited (struct sctp_transport*) ;

__attribute__((used)) static void sctp_outq_select_transport(struct sctp_flush_ctx *ctx,
           struct sctp_chunk *chunk)
{
 struct sctp_transport *new_transport = chunk->transport;

 if (!new_transport) {
  if (!sctp_chunk_is_data(chunk)) {
   if (ctx->transport && sctp_cmp_addr_exact(&chunk->dest,
       &ctx->transport->ipaddr))
    new_transport = ctx->transport;
   else
    new_transport = sctp_assoc_lookup_paddr(ctx->asoc,
          &chunk->dest);
  }




  if (!new_transport)
   new_transport = ctx->asoc->peer.active_path;
 } else {
  __u8 type;

  switch (new_transport->state) {
  case 130:
  case 128:
  case 129:
   type = chunk->chunk_hdr->type;
   if (type != SCTP_CID_HEARTBEAT &&
       type != SCTP_CID_HEARTBEAT_ACK &&
       type != SCTP_CID_ASCONF_ACK)
    new_transport = ctx->asoc->peer.active_path;
   break;
  default:
   break;
  }
 }


 if (new_transport != ctx->transport) {
  ctx->transport = new_transport;
  ctx->packet = &ctx->transport->packet;

  if (list_empty(&ctx->transport->send_ready))
   list_add_tail(&ctx->transport->send_ready,
          &ctx->transport_list);

  sctp_packet_config(ctx->packet,
       ctx->asoc->peer.i.init_tag,
       ctx->asoc->peer.ecn_capable);



  sctp_transport_burst_limited(ctx->transport);
 }
}
