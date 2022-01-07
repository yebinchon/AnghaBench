
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int dummy; } ;
struct o2hb_node_event {int hn_event_type; int hn_node_num; int hn_item; struct o2nm_node* hn_node; } ;
typedef enum o2hb_callback_type { ____Placeholder_o2hb_callback_type } o2hb_callback_type ;


 int BUG_ON (int) ;
 int ML_HEARTBEAT ;
 int O2HB_NODE_DOWN_CB ;
 int O2HB_NODE_UP_CB ;
 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;
 int mlog (int ,char*,char*,int) ;
 int o2hb_live_lock ;
 int o2hb_node_events ;

__attribute__((used)) static void o2hb_queue_node_event(struct o2hb_node_event *event,
      enum o2hb_callback_type type,
      struct o2nm_node *node,
      int node_num)
{
 assert_spin_locked(&o2hb_live_lock);

 BUG_ON((!node) && (type != O2HB_NODE_DOWN_CB));

 event->hn_event_type = type;
 event->hn_node = node;
 event->hn_node_num = node_num;

 mlog(ML_HEARTBEAT, "Queue node %s event for node %d\n",
      type == O2HB_NODE_UP_CB ? "UP" : "DOWN", node_num);

 list_add_tail(&event->hn_item, &o2hb_node_events);
}
