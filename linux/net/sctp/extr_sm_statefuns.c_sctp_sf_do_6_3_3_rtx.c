
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_2__ {scalar_t__ zero_window_announced; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; scalar_t__ state; TYPE_1__ peer; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int ETIMEDOUT ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_RETRAN ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_STRIKE ;
 int SCTP_CMD_TIMER_START_ONCE ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_T3_RTX_EXPIREDS ;
 int SCTP_PERR (int ) ;
 scalar_t__ SCTP_STATE_SHUTDOWN_PENDING ;
 int SCTP_TO (int ) ;
 int SCTP_TRANSPORT (struct sctp_transport*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;

enum sctp_disposition sctp_sf_do_6_3_3_rtx(struct net *net,
        const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const union sctp_subtype type,
        void *arg,
        struct sctp_cmd_seq *commands)
{
 struct sctp_transport *transport = arg;

 SCTP_INC_STATS(net, SCTP_MIB_T3_RTX_EXPIREDS);

 if (asoc->overall_error_count >= asoc->max_retrans) {
  if (asoc->peer.zero_window_announced &&
      asoc->state == SCTP_STATE_SHUTDOWN_PENDING) {
   sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START_ONCE,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));
  } else {
   sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
     SCTP_ERROR(ETIMEDOUT));

   sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
     SCTP_PERR(SCTP_ERROR_NO_ERROR));
   SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);
   SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);
   return SCTP_DISPOSITION_DELETE_TCB;
  }
 }
 sctp_add_cmd_sf(commands, SCTP_CMD_STRIKE, SCTP_TRANSPORT(transport));


 sctp_add_cmd_sf(commands, SCTP_CMD_RETRAN, SCTP_TRANSPORT(transport));

 return SCTP_DISPOSITION_CONSUME;
}
