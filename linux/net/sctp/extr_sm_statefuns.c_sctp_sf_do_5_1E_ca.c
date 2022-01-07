
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_ulpevent {int dummy; } ;
struct TYPE_4__ {int sk; } ;
struct sctp_endpoint {TYPE_1__ base; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int skb; } ;
struct TYPE_6__ {int auth_capable; scalar_t__ adaptation_ind; } ;
struct TYPE_5__ {int sinit_max_instreams; int sinit_num_ostreams; } ;
struct sctp_association {TYPE_3__ peer; TYPE_2__ c; scalar_t__* timeouts; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int GFP_ATOMIC ;
 int SCTP_AUTH_NO_AUTH ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_HB_TIMERS_START ;
 int SCTP_CMD_INIT_COUNTER_RESET ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_COMM_UP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 size_t SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 size_t SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ACTIVEESTABS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_ESTABLISHED ;
 int SCTP_TO (size_t) ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_adaptation_indication (struct sctp_association const*,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association const*,int ,int ,int ,int ,int ,int *,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_authkey (struct sctp_association const*,int ,int ,int ) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int security_inet_conn_established (int ,int ) ;

enum sctp_disposition sctp_sf_do_5_1E_ca(struct net *net,
      const struct sctp_endpoint *ep,
      const struct sctp_association *asoc,
      const union sctp_subtype type,
      void *arg,
      struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_ulpevent *ev;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);




 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_chunkhdr)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);







 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_COUNTER_RESET, SCTP_NULL());


 security_inet_conn_established(ep->base.sk, chunk->skb);







 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_COOKIE));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_ESTABLISHED));
 SCTP_INC_STATS(net, SCTP_MIB_CURRESTAB);
 SCTP_INC_STATS(net, SCTP_MIB_ACTIVEESTABS);
 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_START, SCTP_NULL());
 if (asoc->timeouts[SCTP_EVENT_TIMEOUT_AUTOCLOSE])
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
    SCTP_TO(SCTP_EVENT_TIMEOUT_AUTOCLOSE));





 ev = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_COMM_UP,
          0, asoc->c.sinit_num_ostreams,
          asoc->c.sinit_max_instreams,
          ((void*)0), GFP_ATOMIC);

 if (!ev)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP, SCTP_ULPEVENT(ev));






 if (asoc->peer.adaptation_ind) {
  ev = sctp_ulpevent_make_adaptation_indication(asoc, GFP_ATOMIC);
  if (!ev)
   goto nomem;

  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(ev));
 }

 if (!asoc->peer.auth_capable) {
  ev = sctp_ulpevent_make_authkey(asoc, 0, SCTP_AUTH_NO_AUTH,
      GFP_ATOMIC);
  if (!ev)
   goto nomem;
  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(ev));
 }

 return SCTP_DISPOSITION_CONSUME;
nomem:
 return SCTP_DISPOSITION_NOMEM;
}
