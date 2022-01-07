
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int state; int name; } ;
 int TIPC_LINK_DOWN_EVT ;
 int pr_err (char*,int,int,...) ;
 int trace_tipc_link_fsm (int ,int,int,int) ;

int tipc_link_fsm_evt(struct tipc_link *l, int evt)
{
 int rc = 0;
 int old_state = l->state;

 switch (l->state) {
 case 132:
  switch (evt) {
  case 134:
   l->state = 135;
   break;
  case 131:
   l->state = 133;
   break;
  case 136:
  case 138:
  case 140:
  case 137:
  case 129:
  case 128:
  default:
   goto illegal_evt;
  }
  break;
 case 133:
  switch (evt) {
  case 134:
   l->state = 141;
   break;
  case 138:
   l->state = 139;
  case 136:
  case 131:
  case 140:
  case 137:
   break;
  case 129:
  case 128:
  default:
   goto illegal_evt;
  }
  break;
 case 135:
  switch (evt) {
  case 131:
   l->state = 141;
   break;
  case 134:
  case 140:
  case 136:
   break;
  case 129:
  case 128:
  case 138:
  case 137:
  default:
   goto illegal_evt;
  }
  break;
 case 139:
  switch (evt) {
  case 137:
   l->state = 133;
   break;
  case 134:
  case 131:
  case 140:
  case 136:
   break;
  case 138:
  case 129:
  case 128:
  default:
   goto illegal_evt;
  }
  break;
 case 141:
  switch (evt) {
  case 140:
   l->state = 142;
   break;
  case 138:
   l->state = 139;
   break;
  case 131:
   l->state = 133;
   break;
  case 136:
  case 134:
  case 129:
  case 137:
   break;
  case 128:
  default:
   goto illegal_evt;
  }
  break;
 case 142:
  switch (evt) {
  case 134:
   l->state = 135;
   rc |= TIPC_LINK_DOWN_EVT;
   break;
  case 136:
   l->state = 132;
   rc |= TIPC_LINK_DOWN_EVT;
   break;
  case 131:
   l->state = 133;
   break;
  case 140:
  case 128:
   break;
  case 129:
   l->state = 130;
   break;
  case 138:
  case 137:
  default:
   goto illegal_evt;
  }
  break;
 case 130:
  switch (evt) {
  case 134:
   l->state = 135;
   rc |= TIPC_LINK_DOWN_EVT;
   break;
  case 136:
   l->state = 132;
   rc |= TIPC_LINK_DOWN_EVT;
   break;
  case 131:
   l->state = 133;
   break;
  case 140:
  case 129:
   break;
  case 128:
   l->state = 142;
   break;
  case 138:
  case 137:
  default:
   goto illegal_evt;
  }
  break;
 default:
  pr_err("Unknown FSM state %x in %s\n", l->state, l->name);
 }
 trace_tipc_link_fsm(l->name, old_state, l->state, evt);
 return rc;
illegal_evt:
 pr_err("Illegal FSM event %x in state %x on link %s\n",
        evt, l->state, l->name);
 trace_tipc_link_fsm(l->name, old_state, l->state, evt);
 return rc;
}
