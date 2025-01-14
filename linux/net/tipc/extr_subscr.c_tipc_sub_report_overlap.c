
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tipc_subscr {int dummy; } ;
struct TYPE_2__ {struct tipc_subscr s; } ;
struct tipc_subscription {int lock; TYPE_1__ evt; } ;
struct tipc_name_seq {void* upper; void* lower; void* type; } ;


 scalar_t__ TIPC_NODE_SCOPE ;
 scalar_t__ TIPC_SUB_CLUSTER_SCOPE ;
 scalar_t__ TIPC_SUB_NODE_SCOPE ;
 scalar_t__ TIPC_SUB_PORTS ;
 scalar_t__ filter ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tipc_sub_check_overlap (struct tipc_name_seq*,scalar_t__,scalar_t__) ;
 void* tipc_sub_read (struct tipc_subscr*,void*) ;
 int tipc_sub_send_event (struct tipc_subscription*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void tipc_sub_report_overlap(struct tipc_subscription *sub,
        u32 found_lower, u32 found_upper,
        u32 event, u32 port, u32 node,
        u32 scope, int must)
{
 struct tipc_subscr *s = &sub->evt.s;
 u32 filter = tipc_sub_read(s, filter);
 struct tipc_name_seq seq;

 seq.type = tipc_sub_read(s, seq.type);
 seq.lower = tipc_sub_read(s, seq.lower);
 seq.upper = tipc_sub_read(s, seq.upper);

 if (!tipc_sub_check_overlap(&seq, found_lower, found_upper))
  return;

 if (!must && !(filter & TIPC_SUB_PORTS))
  return;
 if (filter & TIPC_SUB_CLUSTER_SCOPE && scope == TIPC_NODE_SCOPE)
  return;
 if (filter & TIPC_SUB_NODE_SCOPE && scope != TIPC_NODE_SCOPE)
  return;
 spin_lock(&sub->lock);
 tipc_sub_send_event(sub, found_lower, found_upper,
       event, port, node);
 spin_unlock(&sub->lock);
}
