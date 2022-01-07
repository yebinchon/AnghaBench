
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_packet {int vtag; } ;
struct TYPE_6__ {int sk; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {TYPE_2__* skb; TYPE_1__* sctp_hdr; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_5__ {int sk; } ;
struct TYPE_4__ {int vtag; } ;


 int SCTP_CMD_SEND_PKT ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int ntohl (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_shutdown_complete (struct sctp_association const*,struct sctp_chunk*) ;
 int sctp_ootb_pkt_free (struct sctp_packet*) ;
 struct sctp_packet* sctp_ootb_pkt_new (struct net*,struct sctp_association const*,struct sctp_chunk*) ;
 int sctp_packet_append_chunk (struct sctp_packet*,struct sctp_chunk*) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 scalar_t__ sctp_test_T_bit (struct sctp_chunk*) ;

__attribute__((used)) static enum sctp_disposition sctp_sf_shut_8_4_5(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_packet *packet = ((void*)0);
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *shut;

 packet = sctp_ootb_pkt_new(net, asoc, chunk);
 if (!packet)
  return SCTP_DISPOSITION_NOMEM;




 shut = sctp_make_shutdown_complete(asoc, chunk);
 if (!shut) {
  sctp_ootb_pkt_free(packet);
  return SCTP_DISPOSITION_NOMEM;
 }


 if (sctp_test_T_bit(shut))
  packet->vtag = ntohl(chunk->sctp_hdr->vtag);


 shut->skb->sk = ep->base.sk;

 sctp_packet_append_chunk(packet, shut);

 sctp_add_cmd_sf(commands, SCTP_CMD_SEND_PKT,
   SCTP_PACKET(packet));

 SCTP_INC_STATS(net, SCTP_MIB_OUTCTRLCHUNKS);




 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_chunkhdr)))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);





 return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);
}
