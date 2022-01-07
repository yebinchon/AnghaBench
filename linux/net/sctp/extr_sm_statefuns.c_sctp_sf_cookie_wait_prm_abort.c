
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int ECONNREFUSED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_INIT_FAILED ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_USER_ABORT ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_PERR (int ) ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_CLOSED ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;

enum sctp_disposition sctp_sf_cookie_wait_prm_abort(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *abort = arg;


 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));

 if (abort)
  sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(abort));

 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_CLOSED));

 SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);





 sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
   SCTP_ERROR(ECONNREFUSED));

 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_FAILED,
   SCTP_PERR(SCTP_ERROR_USER_ABORT));

 return SCTP_DISPOSITION_ABORT;
}
