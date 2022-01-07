
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int singleton; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int GFP_ATOMIC ;
 int SCTP_CMD_DELETE_TCB ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_SHUTDOWNS ;
 int SCTP_NULL () ;
 int SCTP_SHUTDOWN_COMP ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_CLOSED ;
 int SCTP_TO (int ) ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunk (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association const*,int ,int ,int ,int ,int ,int *,int ) ;
 int sctp_vtag_verify_either (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_do_4_C(struct net *net,
         const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const union sctp_subtype type,
         void *arg, struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_ulpevent *ev;

 if (!sctp_vtag_verify_either(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);






 if (!chunk->singleton)
  return sctp_sf_violation_chunk(net, ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_chunkhdr)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);
 ev = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_SHUTDOWN_COMP,
          0, 0, 0, ((void*)0), GFP_ATOMIC);
 if (ev)
  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(ev));
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));

 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_CLOSED));

 SCTP_INC_STATS(net, SCTP_MIB_SHUTDOWNS);
 SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);

 sctp_add_cmd_sf(commands, SCTP_CMD_DELETE_TCB, SCTP_NULL());

 return SCTP_DISPOSITION_DELETE_TCB;
}
