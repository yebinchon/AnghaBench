
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int dummy; } ;
struct o2net_node {int nn_lock; scalar_t__ nn_persistent_error; int nn_timeout; scalar_t__ nn_last_connect_attempt; } ;


 int BUG_ON (int) ;
 int atomic_set (int *,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct o2net_node* o2net_nn_from_num (int) ;
 int o2net_reconnect_delay () ;
 int o2net_set_nn_state (struct o2net_node*,int *,int ,int ) ;
 int o2nm_this_node () ;
 int o2quo_hb_up (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2net_hb_node_up_cb(struct o2nm_node *node, int node_num,
    void *data)
{
 struct o2net_node *nn = o2net_nn_from_num(node_num);

 o2quo_hb_up(node_num);

 BUG_ON(!node);


 nn->nn_last_connect_attempt = jiffies -
  (msecs_to_jiffies(o2net_reconnect_delay()) + 1);

 if (node_num != o2nm_this_node()) {




  spin_lock(&nn->nn_lock);
  atomic_set(&nn->nn_timeout, 0);
  if (nn->nn_persistent_error)
   o2net_set_nn_state(nn, ((void*)0), 0, 0);
  spin_unlock(&nn->nn_lock);
 }
}
