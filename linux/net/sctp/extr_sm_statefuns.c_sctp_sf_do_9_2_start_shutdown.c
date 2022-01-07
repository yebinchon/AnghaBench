
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__* timeouts; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_HB_TIMERS_STOP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SETUP_T2 ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 size_t SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 size_t SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 size_t SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_SHUTDOWN_SENT ;
 int SCTP_TO (size_t) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 struct sctp_chunk* sctp_make_shutdown (struct sctp_association const*,int *) ;

enum sctp_disposition sctp_sf_do_9_2_start_shutdown(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *reply;






 reply = sctp_make_shutdown(asoc, ((void*)0));
 if (!reply)
  goto nomem;




 sctp_add_cmd_sf(commands, SCTP_CMD_SETUP_T2, SCTP_CHUNK(reply));


 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));





 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));

 if (asoc->timeouts[SCTP_EVENT_TIMEOUT_AUTOCLOSE])
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_AUTOCLOSE));


 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_SHUTDOWN_SENT));






 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_STOP, SCTP_NULL());

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));

 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
