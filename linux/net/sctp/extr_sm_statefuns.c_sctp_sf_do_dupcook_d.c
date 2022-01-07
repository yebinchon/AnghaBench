
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_4__ {int auth_capable; scalar_t__ adaptation_ind; } ;
struct TYPE_3__ {int sinit_max_instreams; int sinit_num_ostreams; } ;
struct sctp_association {scalar_t__ state; TYPE_2__ peer; TYPE_1__ c; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int GFP_ATOMIC ;
 int SCTP_AUTH_NO_AUTH ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_HB_TIMERS_START ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_COMM_UP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_NULL () ;
 int SCTP_STATE (scalar_t__) ;
 scalar_t__ SCTP_STATE_ESTABLISHED ;
 int SCTP_TO (int ) ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_auth_chunk_verify (struct net*,struct sctp_chunk*,struct sctp_association const*) ;
 struct sctp_chunk* sctp_make_cookie_ack (struct sctp_association const*,struct sctp_chunk*) ;
 int sctp_ulpevent_free (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_adaptation_indication (struct sctp_association const*,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association const*,int ,int ,int ,int ,int ,int *,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_authkey (struct sctp_association const*,int ,int ,int ) ;

__attribute__((used)) static enum sctp_disposition sctp_sf_do_dupcook_d(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     struct sctp_cmd_seq *commands,
     struct sctp_association *new_asoc)
{
 struct sctp_ulpevent *ev = ((void*)0), *ai_ev = ((void*)0), *auth_ev = ((void*)0);
 struct sctp_chunk *repl;
 if (!sctp_auth_chunk_verify(net, chunk, asoc))
  return SCTP_DISPOSITION_DISCARD;


 if (asoc->state < SCTP_STATE_ESTABLISHED) {
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T1_COOKIE));
  sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
    SCTP_STATE(SCTP_STATE_ESTABLISHED));
  SCTP_INC_STATS(net, SCTP_MIB_CURRESTAB);
  sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_START,
    SCTP_NULL());
  ev = sctp_ulpevent_make_assoc_change(asoc, 0,
          SCTP_COMM_UP, 0,
          asoc->c.sinit_num_ostreams,
          asoc->c.sinit_max_instreams,
          ((void*)0), GFP_ATOMIC);
  if (!ev)
   goto nomem;






  if (asoc->peer.adaptation_ind) {
   ai_ev = sctp_ulpevent_make_adaptation_indication(asoc,
         GFP_ATOMIC);
   if (!ai_ev)
    goto nomem;

  }

  if (!asoc->peer.auth_capable) {
   auth_ev = sctp_ulpevent_make_authkey(asoc, 0,
            SCTP_AUTH_NO_AUTH,
            GFP_ATOMIC);
   if (!auth_ev)
    goto nomem;
  }
 }

 repl = sctp_make_cookie_ack(asoc, chunk);
 if (!repl)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(repl));

 if (ev)
  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(ev));
 if (ai_ev)
  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
     SCTP_ULPEVENT(ai_ev));
 if (auth_ev)
  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(auth_ev));

 return SCTP_DISPOSITION_CONSUME;

nomem:
 if (auth_ev)
  sctp_ulpevent_free(auth_ev);
 if (ai_ev)
  sctp_ulpevent_free(ai_ev);
 if (ev)
  sctp_ulpevent_free(ev);
 return SCTP_DISPOSITION_NOMEM;
}
