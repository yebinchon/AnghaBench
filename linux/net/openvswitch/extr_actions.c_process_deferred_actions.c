
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct deferred_action {int actions_len; struct nlattr* actions; struct sw_flow_key pkt_key; struct sk_buff* skb; } ;
struct datapath {int dummy; } ;
struct action_fifo {int dummy; } ;


 struct deferred_action* action_fifo_get (struct action_fifo*) ;
 int action_fifo_init (struct action_fifo*) ;
 scalar_t__ action_fifo_is_empty (struct action_fifo*) ;
 int action_fifos ;
 int do_execute_actions (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ;
 int ovs_dp_process_packet (struct sk_buff*,struct sw_flow_key*) ;
 struct action_fifo* this_cpu_ptr (int ) ;

__attribute__((used)) static void process_deferred_actions(struct datapath *dp)
{
 struct action_fifo *fifo = this_cpu_ptr(action_fifos);


 if (action_fifo_is_empty(fifo))
  return;


 do {
  struct deferred_action *da = action_fifo_get(fifo);
  struct sk_buff *skb = da->skb;
  struct sw_flow_key *key = &da->pkt_key;
  const struct nlattr *actions = da->actions;
  int actions_len = da->actions_len;

  if (actions)
   do_execute_actions(dp, skb, key, actions, actions_len);
  else
   ovs_dp_process_packet(skb, key);
 } while (!action_fifo_is_empty(fifo));


 action_fifo_init(fifo);
}
