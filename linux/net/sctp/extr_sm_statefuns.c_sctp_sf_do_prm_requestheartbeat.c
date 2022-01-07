
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_CMD_TRANSPORT_HB_SENT ;
 int SCTP_DISPOSITION_CONSUME ;
 scalar_t__ SCTP_DISPOSITION_NOMEM ;
 int SCTP_TRANSPORT (void*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 scalar_t__ sctp_sf_heartbeat (struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,struct sctp_transport*,struct sctp_cmd_seq*) ;

enum sctp_disposition sctp_sf_do_prm_requestheartbeat(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 if (SCTP_DISPOSITION_NOMEM == sctp_sf_heartbeat(ep, asoc, type,
          (struct sctp_transport *)arg, commands))
  return SCTP_DISPOSITION_NOMEM;
 sctp_add_cmd_sf(commands, SCTP_CMD_TRANSPORT_HB_SENT,
   SCTP_TRANSPORT(arg));
 return SCTP_DISPOSITION_CONSUME;
}
