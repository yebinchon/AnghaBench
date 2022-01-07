
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_paramhdr {int length; } ;
struct sctp_heartbeathdr {int dummy; } ;
struct sctp_heartbeat_chunk {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_4__ {struct sctp_heartbeathdr* hb_hdr; } ;
struct sctp_chunk {TYPE_3__* skb; TYPE_2__* chunk_hdr; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int length; } ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 size_t ntohs (int ) ;
 int pskb_pull (TYPE_3__*,size_t) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_heartbeat_ack (struct sctp_association const*,struct sctp_chunk*,struct sctp_paramhdr*,size_t) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_paramlen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_paramhdr*,struct sctp_cmd_seq*) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_beat_8_3(struct net *net,
           const struct sctp_endpoint *ep,
           const struct sctp_association *asoc,
           const union sctp_subtype type,
           void *arg, struct sctp_cmd_seq *commands)
{
 struct sctp_paramhdr *param_hdr;
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *reply;
 size_t paylen = 0;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk,
         sizeof(struct sctp_heartbeat_chunk)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);





 chunk->subh.hb_hdr = (struct sctp_heartbeathdr *)chunk->skb->data;
 param_hdr = (struct sctp_paramhdr *)chunk->subh.hb_hdr;
 paylen = ntohs(chunk->chunk_hdr->length) - sizeof(struct sctp_chunkhdr);

 if (ntohs(param_hdr->length) > paylen)
  return sctp_sf_violation_paramlen(net, ep, asoc, type, arg,
        param_hdr, commands);

 if (!pskb_pull(chunk->skb, paylen))
  goto nomem;

 reply = sctp_make_heartbeat_ack(asoc, chunk, param_hdr, paylen);
 if (!reply)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));
 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
