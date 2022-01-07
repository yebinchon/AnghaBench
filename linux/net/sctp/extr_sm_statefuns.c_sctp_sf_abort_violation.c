
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sctp_packet {void* vtag; } ;
struct TYPE_11__ {int init_tag; } ;
struct sctp_initack_chunk {TYPE_4__ init_hdr; } ;
struct TYPE_14__ {int sk; } ;
struct sctp_endpoint {TYPE_7__ base; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {TYPE_6__* skb; TYPE_5__* sctp_hdr; TYPE_3__* chunk_hdr; } ;
struct TYPE_8__ {int init_tag; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
struct sctp_association {scalar_t__ state; TYPE_2__ peer; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef int __u8 ;
struct TYPE_13__ {int sk; } ;
struct TYPE_12__ {int vtag; } ;
struct TYPE_10__ {scalar_t__ type; int flags; } ;


 int ECONNABORTED ;
 int ECONNREFUSED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CHUNK_FLAG_T ;
 int SCTP_CID_ABORT ;
 scalar_t__ SCTP_CID_INIT_ACK ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_INIT_FAILED ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SEND_PKT ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_CMD_UPDATE_INITTAG ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_PROTO_VIOLATION ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int SCTP_PERR (int ) ;
 scalar_t__ SCTP_STATE_COOKIE_ECHOED ;
 int SCTP_ST_CHUNK (int ) ;
 int SCTP_TO (int ) ;
 int SCTP_U32 (unsigned int) ;
 void* ntohl (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 scalar_t__ sctp_auth_recv_cid (int ,struct sctp_association const*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_abort_violation (struct sctp_association const*,struct sctp_chunk*,int const*,size_t const) ;
 struct sctp_packet* sctp_ootb_pkt_new (struct net*,struct sctp_association const*,struct sctp_chunk*) ;
 int sctp_packet_append_chunk (struct sctp_packet*,struct sctp_chunk*) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int ,void*,struct sctp_cmd_seq*) ;
 scalar_t__ sctp_test_T_bit (struct sctp_chunk*) ;

__attribute__((used)) static enum sctp_disposition sctp_sf_abort_violation(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     void *arg,
     struct sctp_cmd_seq *commands,
     const __u8 *payload,
     const size_t paylen)
{
 struct sctp_packet *packet = ((void*)0);
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *abort = ((void*)0);
 if (sctp_auth_recv_cid(SCTP_CID_ABORT, asoc))
  goto discard;


 abort = sctp_make_abort_violation(asoc, chunk, payload, paylen);
 if (!abort)
  goto nomem;

 if (asoc) {

  if (chunk->chunk_hdr->type == SCTP_CID_INIT_ACK &&
      !asoc->peer.i.init_tag) {
   struct sctp_initack_chunk *initack;

   initack = (struct sctp_initack_chunk *)chunk->chunk_hdr;
   if (!sctp_chunk_length_valid(chunk, sizeof(*initack)))
    abort->chunk_hdr->flags |= SCTP_CHUNK_FLAG_T;
   else {
    unsigned int inittag;

    inittag = ntohl(initack->init_hdr.init_tag);
    sctp_add_cmd_sf(commands, SCTP_CMD_UPDATE_INITTAG,
      SCTP_U32(inittag));
   }
  }

  sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(abort));
  SCTP_INC_STATS(net, SCTP_MIB_OUTCTRLCHUNKS);

  if (asoc->state <= SCTP_STATE_COOKIE_ECHOED) {
   sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
     SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));
   sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
     SCTP_ERROR(ECONNREFUSED));
   sctp_add_cmd_sf(commands, SCTP_CMD_INIT_FAILED,
     SCTP_PERR(SCTP_ERROR_PROTO_VIOLATION));
  } else {
   sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
     SCTP_ERROR(ECONNABORTED));
   sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
     SCTP_PERR(SCTP_ERROR_PROTO_VIOLATION));
   SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);
  }
 } else {
  packet = sctp_ootb_pkt_new(net, asoc, chunk);

  if (!packet)
   goto nomem_pkt;

  if (sctp_test_T_bit(abort))
   packet->vtag = ntohl(chunk->sctp_hdr->vtag);

  abort->skb->sk = ep->base.sk;

  sctp_packet_append_chunk(packet, abort);

  sctp_add_cmd_sf(commands, SCTP_CMD_SEND_PKT,
   SCTP_PACKET(packet));

  SCTP_INC_STATS(net, SCTP_MIB_OUTCTRLCHUNKS);
 }

 SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);

discard:
 sctp_sf_pdiscard(net, ep, asoc, SCTP_ST_CHUNK(0), arg, commands);
 return SCTP_DISPOSITION_ABORT;

nomem_pkt:
 sctp_chunk_free(abort);
nomem:
 return SCTP_DISPOSITION_NOMEM;
}
