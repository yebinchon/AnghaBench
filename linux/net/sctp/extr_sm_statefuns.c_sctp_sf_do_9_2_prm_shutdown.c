
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {int outqueue; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_CMD_NEW_STATE ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 scalar_t__ sctp_outq_is_empty (int *) ;
 int sctp_sf_do_9_2_start_shutdown (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;

enum sctp_disposition sctp_sf_do_9_2_prm_shutdown(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 enum sctp_disposition disposition;
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_SHUTDOWN_PENDING));

 disposition = SCTP_DISPOSITION_CONSUME;
 if (sctp_outq_is_empty(&asoc->outqueue)) {
  disposition = sctp_sf_do_9_2_start_shutdown(net, ep, asoc, type,
           arg, commands);
 }

 return disposition;
}
