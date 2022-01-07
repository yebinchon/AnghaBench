
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_errhdr {int cause; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; scalar_t__ chunk_end; TYPE_2__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef int __be16 ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int ECONNRESET ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_PERR (int ) ;
 unsigned int ntohs (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_walk_errors (struct sctp_errhdr*,TYPE_2__*) ;

__attribute__((used)) static enum sctp_disposition __sctp_sf_do_9_1_abort(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 __be16 error = SCTP_ERROR_NO_ERROR;
 struct sctp_chunk *chunk = arg;
 unsigned int len;


 len = ntohs(chunk->chunk_hdr->length);
 if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_errhdr)) {
  struct sctp_errhdr *err;

  sctp_walk_errors(err, chunk->chunk_hdr);
  if ((void *)err != (void *)chunk->chunk_end)
   return sctp_sf_pdiscard(net, ep, asoc, type, arg,
      commands);

  error = ((struct sctp_errhdr *)chunk->skb->data)->cause;
 }

 sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR, SCTP_ERROR(ECONNRESET));

 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED, SCTP_PERR(error));
 SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);
 SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);

 return SCTP_DISPOSITION_ABORT;
}
