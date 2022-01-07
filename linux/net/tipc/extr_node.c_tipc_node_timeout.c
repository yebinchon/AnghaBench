
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int link_cnt; int keepalive_intv; int timer; int net; struct tipc_link_entry* links; } ;
struct tipc_link_entry {int maddr; int lock; int link; } ;
struct timer_list {int dummy; } ;
struct sk_buff_head {int dummy; } ;


 int MAX_BEARERS ;
 int TIPC_LINK_DOWN_EVT ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 struct tipc_node* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct tipc_node* n ;
 int node_is_up (struct tipc_node*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer ;
 int tipc_bearer_xmit (int ,int,struct sk_buff_head*,int *) ;
 int tipc_link_timeout (int ,struct sk_buff_head*) ;
 int tipc_node_calculate_timer (struct tipc_node*,int ) ;
 scalar_t__ tipc_node_cleanup (struct tipc_node*) ;
 int tipc_node_link_down (struct tipc_node*,int,int) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_read_lock (struct tipc_node*) ;
 int tipc_node_read_unlock (struct tipc_node*) ;
 int trace_tipc_node_timeout (struct tipc_node*,int,char*) ;

__attribute__((used)) static void tipc_node_timeout(struct timer_list *t)
{
 struct tipc_node *n = from_timer(n, t, timer);
 struct tipc_link_entry *le;
 struct sk_buff_head xmitq;
 int remains = n->link_cnt;
 int bearer_id;
 int rc = 0;

 trace_tipc_node_timeout(n, 0, " ");
 if (!node_is_up(n) && tipc_node_cleanup(n)) {

  tipc_node_put(n);
  return;
 }

 __skb_queue_head_init(&xmitq);




 tipc_node_read_lock(n);
 n->keepalive_intv = 10000;
 tipc_node_read_unlock(n);
 for (bearer_id = 0; remains && (bearer_id < MAX_BEARERS); bearer_id++) {
  tipc_node_read_lock(n);
  le = &n->links[bearer_id];
  if (le->link) {
   spin_lock_bh(&le->lock);

   tipc_node_calculate_timer(n, le->link);
   rc = tipc_link_timeout(le->link, &xmitq);
   spin_unlock_bh(&le->lock);
   remains--;
  }
  tipc_node_read_unlock(n);
  tipc_bearer_xmit(n->net, bearer_id, &xmitq, &le->maddr);
  if (rc & TIPC_LINK_DOWN_EVT)
   tipc_node_link_down(n, bearer_id, 0);
 }
 mod_timer(&n->timer, jiffies + msecs_to_jiffies(n->keepalive_intv));
}
