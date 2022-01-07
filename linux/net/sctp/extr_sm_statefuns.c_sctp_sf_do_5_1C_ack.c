
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_packet {int dummy; } ;
struct sctp_inithdr {int dummy; } ;
struct sctp_initack_chunk {int dummy; } ;
struct sctp_init_chunk {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_6__ {int v; } ;
struct TYPE_5__ {struct sctp_inithdr* init_hdr; } ;
struct sctp_chunk {TYPE_3__* chunk_hdr; TYPE_4__* skb; TYPE_2__ param_hdr; int transport; TYPE_1__ subh; int singleton; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_error { ____Placeholder_sctp_error } sctp_error ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef int __u8 ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int length; int type; } ;


 int ECONNREFUSED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CID_ABORT ;
 int SCTP_CMD_ASSOC_SHKEY ;
 int SCTP_CMD_GEN_COOKIE_ECHO ;
 int SCTP_CMD_INIT_COUNTER_RESET ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_PEER_INIT ;
 int SCTP_CMD_SEND_PKT ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_ERROR_INV_PARAM ;
 int SCTP_ERROR_NO_RESOURCE ;
 int SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_NULL () ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int SCTP_PEER_INIT (struct sctp_init_chunk*) ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_COOKIE_ECHOED ;
 int SCTP_TO (int ) ;
 scalar_t__ ntohs (int ) ;
 struct sctp_packet* sctp_abort_pkt_new (struct net*,struct sctp_endpoint const*,struct sctp_association const*,void*,int *,scalar_t__) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 scalar_t__ sctp_auth_recv_cid (int ,struct sctp_association const*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunk (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_stop_t1_and_abort (struct net*,struct sctp_cmd_seq*,int,int ,struct sctp_association const*,int ) ;
 int sctp_verify_init (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int ,struct sctp_init_chunk*,struct sctp_chunk*,struct sctp_chunk**) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int skb_pull (TYPE_4__*,int) ;

enum sctp_disposition sctp_sf_do_5_1C_ack(struct net *net,
       const struct sctp_endpoint *ep,
       const struct sctp_association *asoc,
       const union sctp_subtype type,
       void *arg,
       struct sctp_cmd_seq *commands)
{
 struct sctp_init_chunk *initchunk;
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *err_chunk;
 struct sctp_packet *packet;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);





 if (!chunk->singleton)
  return sctp_sf_violation_chunk(net, ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_initack_chunk)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);

 chunk->subh.init_hdr = (struct sctp_inithdr *)chunk->skb->data;


 err_chunk = ((void*)0);
 if (!sctp_verify_init(net, ep, asoc, chunk->chunk_hdr->type,
         (struct sctp_init_chunk *)chunk->chunk_hdr, chunk,
         &err_chunk)) {

  enum sctp_error error = SCTP_ERROR_NO_RESOURCE;






  if (err_chunk) {
   packet = sctp_abort_pkt_new(net, ep, asoc, arg,
     (__u8 *)(err_chunk->chunk_hdr) +
     sizeof(struct sctp_chunkhdr),
     ntohs(err_chunk->chunk_hdr->length) -
     sizeof(struct sctp_chunkhdr));

   sctp_chunk_free(err_chunk);

   if (packet) {
    sctp_add_cmd_sf(commands, SCTP_CMD_SEND_PKT,
      SCTP_PACKET(packet));
    SCTP_INC_STATS(net, SCTP_MIB_OUTCTRLCHUNKS);
    error = SCTP_ERROR_INV_PARAM;
   }
  }
  if (sctp_auth_recv_cid(SCTP_CID_ABORT, asoc))
   return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);

  SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);
  return sctp_stop_t1_and_abort(net, commands, error, ECONNREFUSED,
      asoc, chunk->transport);
 }




 chunk->param_hdr.v = skb_pull(chunk->skb, sizeof(struct sctp_inithdr));

 initchunk = (struct sctp_init_chunk *)chunk->chunk_hdr;

 sctp_add_cmd_sf(commands, SCTP_CMD_PEER_INIT,
   SCTP_PEER_INIT(initchunk));


 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_COUNTER_RESET, SCTP_NULL());





 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_COOKIE));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_COOKIE_ECHOED));




 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_SHKEY, SCTP_NULL());







 sctp_add_cmd_sf(commands, SCTP_CMD_GEN_COOKIE_ECHO,
   SCTP_CHUNK(err_chunk));

 return SCTP_DISPOSITION_CONSUME;
}
