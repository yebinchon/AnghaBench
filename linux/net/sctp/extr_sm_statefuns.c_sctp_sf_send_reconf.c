
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; int strreset_chunk; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int ETIMEDOUT ;
 int SCTP_CHUNK (int ) ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_STRIKE ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_PERR (int ) ;
 int SCTP_TRANSPORT (struct sctp_transport*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_hold (int ) ;

enum sctp_disposition sctp_sf_send_reconf(struct net *net,
       const struct sctp_endpoint *ep,
       const struct sctp_association *asoc,
       const union sctp_subtype type,
       void *arg,
       struct sctp_cmd_seq *commands)
{
 struct sctp_transport *transport = arg;

 if (asoc->overall_error_count >= asoc->max_retrans) {
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ETIMEDOUT));

  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_NO_ERROR));
  SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_DELETE_TCB;
 }

 sctp_chunk_hold(asoc->strreset_chunk);
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
   SCTP_CHUNK(asoc->strreset_chunk));
 sctp_add_cmd_sf(commands, SCTP_CMD_STRIKE, SCTP_TRANSPORT(transport));

 return SCTP_DISPOSITION_CONSUME;
}
