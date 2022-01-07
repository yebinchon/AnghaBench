
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int state; int peer_id; } ;
 int pr_err (char*,int,...) ;
 int trace_tipc_node_fsm (int ,int,int,int) ;

__attribute__((used)) static void tipc_node_fsm_evt(struct tipc_node *n, int evt)
{
 int state = n->state;

 switch (state) {
 case 134:
  switch (evt) {
  case 132:
   state = 129;
   break;
  case 137:
   state = 135;
   break;
  case 130:
  case 136:
   break;
  case 138:
  case 139:
  case 142:
  case 141:
  default:
   goto illegal_evt;
  }
  break;
 case 128:
  switch (evt) {
  case 130:
   state = 133;
   break;
  case 136:
   state = 131;
   break;
  case 139:
   state = 140;
   break;
  case 142:
   state = 143;
   break;
  case 132:
  case 137:
  case 138:
  case 141:
   break;
  default:
   goto illegal_evt;
  }
  break;
 case 133:
  switch (evt) {
  case 136:
   state = 134;
   break;
  case 132:
  case 137:
  case 130:
   break;
  case 138:
  case 139:
  case 142:
  case 141:
  default:
   goto illegal_evt;
  }
  break;
 case 129:
  switch (evt) {
  case 137:
   state = 128;
   break;
  case 130:
   state = 134;
   break;
  case 132:
  case 136:
  case 138:
  case 142:
   break;
  case 139:
  case 141:
  default:
   goto illegal_evt;
  }
  break;
 case 135:
  switch (evt) {
  case 132:
   state = 128;
   break;
  case 136:
   state = 134;
   break;
  case 130:
  case 137:
   break;
  case 138:
  case 139:
  case 142:
  case 141:
  default:
   goto illegal_evt;
  }
  break;
 case 131:
  switch (evt) {
  case 130:
   state = 134;
   break;
  case 132:
  case 137:
  case 136:
   break;
  case 138:
  case 139:
  case 142:
  case 141:
  default:
   goto illegal_evt;
  }
  break;
 case 143:
  switch (evt) {
  case 130:
   state = 133;
   break;
  case 136:
   state = 131;
   break;
  case 141:
   state = 128;
   break;
  case 142:
  case 132:
  case 137:
   break;
  case 139:
  case 138:
  default:
   goto illegal_evt;
  }
  break;
 case 140:
  switch (evt) {
  case 130:
   state = 133;
   break;
  case 136:
   state = 131;
   break;
  case 138:
   state = 128;
   break;
  case 142:
   state = 143;
   break;
  case 139:
  case 132:
  case 137:
   break;
  case 141:
  default:
   goto illegal_evt;
  }
  break;
 default:
  pr_err("Unknown node fsm state %x\n", state);
  break;
 }
 trace_tipc_node_fsm(n->peer_id, n->state, state, evt);
 n->state = state;
 return;

illegal_evt:
 pr_err("Illegal node fsm evt %x in state %x\n", evt, state);
 trace_tipc_node_fsm(n->peer_id, n->state, state, evt);
}
