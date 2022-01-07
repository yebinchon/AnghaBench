
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct deferred_action {int actions_len; struct sw_flow_key pkt_key; struct nlattr const* actions; struct sk_buff* skb; } ;
struct action_fifo {int dummy; } ;


 struct deferred_action* action_fifo_put (struct action_fifo*) ;
 int action_fifos ;
 struct action_fifo* this_cpu_ptr (int ) ;

__attribute__((used)) static struct deferred_action *add_deferred_actions(struct sk_buff *skb,
        const struct sw_flow_key *key,
        const struct nlattr *actions,
        const int actions_len)
{
 struct action_fifo *fifo;
 struct deferred_action *da;

 fifo = this_cpu_ptr(action_fifos);
 da = action_fifo_put(fifo);
 if (da) {
  da->skb = skb;
  da->actions = actions;
  da->actions_len = actions_len;
  da->pkt_key = *key;
 }

 return da;
}
