
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tipc_mon_state {int probing; int monitoring; int reset; } ;
struct tipc_link {int state; int silent_intv_cnt; int abort_limit; int rcv_unacked; int rst_cnt; int deferdq; int transmq; TYPE_2__* bc_rcvlink; int bearer_id; int addr; int net; struct tipc_mon_state mon_state; TYPE_1__* bc_sndlink; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_4__ {int rcv_unacked; scalar_t__ acked; } ;
struct TYPE_3__ {scalar_t__ snd_nxt; } ;


 int ACTIVATE_MSG ;



 int LINK_FAILURE_EVT ;




 int RESET_MSG ;
 int STATE_MSG ;
 int TIPC_DUMP_ALL ;
 int TIPC_DUMP_NONE ;
 int link_profile_stats (struct tipc_link*) ;
 int skb_queue_empty (int *) ;
 int tipc_link_build_proto_msg (struct tipc_link*,int,int,int ,int ,int ,int ,struct sk_buff_head*) ;
 int tipc_link_fsm_evt (struct tipc_link*,int ) ;
 int tipc_mon_get_state (int ,int ,struct tipc_mon_state*,int ) ;
 int trace_tipc_link_timeout (struct tipc_link*,int ,char*) ;
 int trace_tipc_link_too_silent (struct tipc_link*,int ,char*) ;

int tipc_link_timeout(struct tipc_link *l, struct sk_buff_head *xmitq)
{
 int mtyp = 0;
 int rc = 0;
 bool state = 0;
 bool probe = 0;
 bool setup = 0;
 u16 bc_snt = l->bc_sndlink->snd_nxt - 1;
 u16 bc_acked = l->bc_rcvlink->acked;
 struct tipc_mon_state *mstate = &l->mon_state;

 trace_tipc_link_timeout(l, TIPC_DUMP_NONE, " ");
 trace_tipc_link_too_silent(l, TIPC_DUMP_ALL, " ");
 switch (l->state) {
 case 134:
 case 128:
  mtyp = STATE_MSG;
  link_profile_stats(l);
  tipc_mon_get_state(l->net, l->addr, mstate, l->bearer_id);
  if (mstate->reset || (l->silent_intv_cnt > l->abort_limit))
   return tipc_link_fsm_evt(l, LINK_FAILURE_EVT);
  state = bc_acked != bc_snt;
  state |= l->bc_rcvlink->rcv_unacked;
  state |= l->rcv_unacked;
  state |= !skb_queue_empty(&l->transmq);
  state |= !skb_queue_empty(&l->deferdq);
  probe = mstate->probing;
  probe |= l->silent_intv_cnt;
  if (probe || mstate->monitoring)
   l->silent_intv_cnt++;
  break;
 case 130:
  setup = l->rst_cnt++ <= 4;
  setup |= !(l->rst_cnt % 16);
  mtyp = RESET_MSG;
  break;
 case 133:
  setup = 1;
  mtyp = ACTIVATE_MSG;
  break;
 case 131:
 case 129:
 case 132:
  break;
 default:
  break;
 }

 if (state || probe || setup)
  tipc_link_build_proto_msg(l, mtyp, probe, 0, 0, 0, 0, xmitq);

 return rc;
}
