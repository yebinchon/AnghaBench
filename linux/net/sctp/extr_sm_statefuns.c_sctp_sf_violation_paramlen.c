
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int ECONNABORTED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CID_ABORT ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_PROTO_VIOLATION ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_PERR (int ) ;
 int SCTP_ST_CHUNK (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 scalar_t__ sctp_auth_recv_cid (int ,struct sctp_association const*) ;
 struct sctp_chunk* sctp_make_violation_paramlen (struct sctp_association const*,struct sctp_chunk*,struct sctp_paramhdr*) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,int ,void*,struct sctp_cmd_seq*) ;

__attribute__((used)) static enum sctp_disposition sctp_sf_violation_paramlen(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg, void *ext,
     struct sctp_cmd_seq *commands)
{
 struct sctp_paramhdr *param = ext;
 struct sctp_chunk *abort = ((void*)0);
 struct sctp_chunk *chunk = arg;

 if (sctp_auth_recv_cid(SCTP_CID_ABORT, asoc))
  goto discard;


 abort = sctp_make_violation_paramlen(asoc, chunk, param);
 if (!abort)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(abort));
 SCTP_INC_STATS(net, SCTP_MIB_OUTCTRLCHUNKS);

 sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
   SCTP_ERROR(ECONNABORTED));
 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
   SCTP_PERR(SCTP_ERROR_PROTO_VIOLATION));
 SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);
 SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);

discard:
 sctp_sf_pdiscard(net, ep, asoc, SCTP_ST_CHUNK(0), arg, commands);
 return SCTP_DISPOSITION_ABORT;
nomem:
 return SCTP_DISPOSITION_NOMEM;
}
