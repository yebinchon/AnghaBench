
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
typedef int u32 ;
struct sctp_endpoint {int dummy; } ;
struct sctp_ecne_chunk {int dummy; } ;
struct sctp_cwrhdr {int lowest_tsn; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
struct sctp_association {int last_ecne_tsn; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_2__ {scalar_t__ data; } ;


 int SCTP_CMD_ECN_CWR ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_U32 (int ) ;
 scalar_t__ TSN_lte (int ,int ) ;
 int ntohl (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int skb_pull (TYPE_1__*,int) ;

enum sctp_disposition sctp_sf_do_ecn_cwr(struct net *net,
      const struct sctp_endpoint *ep,
      const struct sctp_association *asoc,
      const union sctp_subtype type,
      void *arg,
      struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_cwrhdr *cwr;
 u32 lowest_tsn;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);

 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_ecne_chunk)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);

 cwr = (struct sctp_cwrhdr *)chunk->skb->data;
 skb_pull(chunk->skb, sizeof(*cwr));

 lowest_tsn = ntohl(cwr->lowest_tsn);


 if (TSN_lte(asoc->last_ecne_tsn, lowest_tsn)) {

  sctp_add_cmd_sf(commands,
    SCTP_CMD_ECN_CWR,
    SCTP_U32(lowest_tsn));
 }
 return SCTP_DISPOSITION_CONSUME;
}
