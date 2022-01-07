
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_operr_chunk {int dummy; } ;
struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {scalar_t__ chunk_end; int chunk_hdr; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_PROCESS_OPERR ;
 int SCTP_DISPOSITION_CONSUME ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_paramlen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,void*,struct sctp_cmd_seq*) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int sctp_walk_errors (struct sctp_errhdr*,int ) ;

enum sctp_disposition sctp_sf_operr_notify(struct net *net,
        const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const union sctp_subtype type,
        void *arg,
        struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_errhdr *err;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_operr_chunk)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);
 sctp_walk_errors(err, chunk->chunk_hdr);
 if ((void *)err != (void *)chunk->chunk_end)
  return sctp_sf_violation_paramlen(net, ep, asoc, type, arg,
        (void *)err, commands);

 sctp_add_cmd_sf(commands, SCTP_CMD_PROCESS_OPERR,
   SCTP_CHUNK(chunk));

 return SCTP_DISPOSITION_CONSUME;
}
