
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_unrecognized_param {int dummy; } ;
struct sctp_packet {int dummy; } ;
struct sctp_inithdr {int dummy; } ;
struct sctp_init_chunk {int dummy; } ;
struct TYPE_12__ {int sk; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_14__ {int v; } ;
struct TYPE_13__ {struct sctp_inithdr* init_hdr; } ;
struct sctp_chunk {TYPE_6__* chunk_hdr; TYPE_7__* skb; TYPE_5__ param_hdr; TYPE_4__ subh; TYPE_2__* sctp_hdr; int singleton; } ;
struct sctp_association {int dummy; } ;
struct TYPE_10__ {int ctl_sock; } ;
struct net {TYPE_1__ sctp; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef int __u8 ;
struct TYPE_17__ {struct sctp_endpoint const* ep; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int length; int type; } ;
struct TYPE_11__ {scalar_t__ vtag; } ;


 int CLOSING ;
 int GFP_ATOMIC ;
 int SCTP_ASOC (struct sctp_association*) ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_DELETE_TCB ;
 int SCTP_CMD_NEW_ASOC ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SEND_PKT ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_MIB_OUTOFBLUES ;
 int SCTP_NULL () ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int ntohs (int ) ;
 struct sctp_packet* sctp_abort_pkt_new (struct net*,struct sctp_endpoint const*,struct sctp_association const*,void*,int *,int) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_unrecognized_param*) ;
 scalar_t__ sctp_assoc_set_bind_addr_from_ep (struct sctp_association*,int ,int ) ;
 int sctp_association_free (struct sctp_association*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_init_ack (struct sctp_association*,struct sctp_chunk*,int ,int) ;
 struct sctp_association* sctp_make_temp_asoc (struct sctp_endpoint const*,struct sctp_chunk*,int ) ;
 int sctp_process_init (struct sctp_association*,struct sctp_chunk*,int ,struct sctp_init_chunk*,int ) ;
 int sctp_scope (int ) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_tabort_8_4_8 (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 TYPE_9__* sctp_sk (int ) ;
 int sctp_source (struct sctp_chunk*) ;
 scalar_t__ sctp_sstate (int ,int ) ;
 int sctp_verify_init (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int ,struct sctp_init_chunk*,struct sctp_chunk*,struct sctp_chunk**) ;
 scalar_t__ security_sctp_assoc_request (struct sctp_endpoint*,TYPE_7__*) ;
 int skb_pull (TYPE_7__*,int) ;

enum sctp_disposition sctp_sf_do_5_1B_init(struct net *net,
        const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const union sctp_subtype type,
        void *arg,
        struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg, *repl, *err_chunk;
 struct sctp_unrecognized_param *unk_param;
 struct sctp_association *new_asoc;
 struct sctp_packet *packet;
 int len;


 if (security_sctp_assoc_request((struct sctp_endpoint *)ep,
     chunk->skb))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);
 if (!chunk->singleton)
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);




 if (ep == sctp_sk(net->sctp.ctl_sock)->ep) {
  SCTP_INC_STATS(net, SCTP_MIB_OUTOFBLUES);
  return sctp_sf_tabort_8_4_8(net, ep, asoc, type, arg, commands);
 }




 if (chunk->sctp_hdr->vtag != 0)
  return sctp_sf_tabort_8_4_8(net, ep, asoc, type, arg, commands);






 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_init_chunk)))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);







 if (sctp_sstate(ep->base.sk, CLOSING))
  return sctp_sf_tabort_8_4_8(net, ep, asoc, type, arg, commands);


 err_chunk = ((void*)0);
 if (!sctp_verify_init(net, ep, asoc, chunk->chunk_hdr->type,
         (struct sctp_init_chunk *)chunk->chunk_hdr, chunk,
         &err_chunk)) {



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
    return SCTP_DISPOSITION_CONSUME;
   } else {
    return SCTP_DISPOSITION_NOMEM;
   }
  } else {
   return sctp_sf_tabort_8_4_8(net, ep, asoc, type, arg,
          commands);
  }
 }


 chunk->subh.init_hdr = (struct sctp_inithdr *)chunk->skb->data;


 chunk->param_hdr.v = skb_pull(chunk->skb, sizeof(struct sctp_inithdr));

 new_asoc = sctp_make_temp_asoc(ep, chunk, GFP_ATOMIC);
 if (!new_asoc)
  goto nomem;

 if (sctp_assoc_set_bind_addr_from_ep(new_asoc,
          sctp_scope(sctp_source(chunk)),
          GFP_ATOMIC) < 0)
  goto nomem_init;


 if (!sctp_process_init(new_asoc, chunk, sctp_source(chunk),
          (struct sctp_init_chunk *)chunk->chunk_hdr,
          GFP_ATOMIC))
  goto nomem_init;






 len = 0;
 if (err_chunk)
  len = ntohs(err_chunk->chunk_hdr->length) -
        sizeof(struct sctp_chunkhdr);

 repl = sctp_make_init_ack(new_asoc, chunk, GFP_ATOMIC, len);
 if (!repl)
  goto nomem_init;





 if (err_chunk) {







  unk_param = (struct sctp_unrecognized_param *)
       ((__u8 *)(err_chunk->chunk_hdr) +
       sizeof(struct sctp_chunkhdr));



  sctp_addto_chunk(repl, len, unk_param);
  sctp_chunk_free(err_chunk);
 }

 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_ASOC, SCTP_ASOC(new_asoc));

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(repl));







 sctp_add_cmd_sf(commands, SCTP_CMD_DELETE_TCB, SCTP_NULL());

 return SCTP_DISPOSITION_DELETE_TCB;

nomem_init:
 sctp_association_free(new_asoc);
nomem:
 if (err_chunk)
  sctp_chunk_free(err_chunk);
 return SCTP_DISPOSITION_NOMEM;
}
