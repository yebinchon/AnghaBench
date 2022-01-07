
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_shutdown_chunk {int dummy; } ;
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
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 size_t SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 size_t SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_SHUTDOWN_ACK_SENT ;
 int SCTP_TO (size_t) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_shutdown_ack (struct sctp_association const*,struct sctp_chunk*) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_do_9_2_shutdown_ack(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *reply;
 if (chunk) {
  if (!sctp_vtag_verify(chunk, asoc))
   return sctp_sf_pdiscard(net, ep, asoc, type, arg,
      commands);


  if (!sctp_chunk_length_valid(
    chunk, sizeof(struct sctp_shutdown_chunk)))
   return sctp_sf_violation_chunklen(net, ep, asoc, type,
         arg, commands);
 }




 reply = sctp_make_shutdown_ack(asoc, chunk);
 if (!reply)
  goto nomem;




 sctp_add_cmd_sf(commands, SCTP_CMD_SETUP_T2, SCTP_CHUNK(reply));


 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

 if (asoc->timeouts[SCTP_EVENT_TIMEOUT_AUTOCLOSE])
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_AUTOCLOSE));


 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_SHUTDOWN_ACK_SENT));






 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_STOP, SCTP_NULL());

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));

 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
