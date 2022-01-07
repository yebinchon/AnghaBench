
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct o2nm_node {int nd_num; } ;
struct TYPE_2__ {int sk_callback_lock; int * sk_user_data; int * sk_data_ready; } ;


 size_t ARRAY_SIZE (int ) ;
 int BUG_ON (int ) ;
 int ML_KTHREAD ;
 int destroy_workqueue (int *) ;
 int mlog (int ,char*) ;
 int o2net_disconnect_node (struct o2nm_node*) ;
 struct socket* o2net_listen_sock ;
 int o2net_nodes ;
 int * o2net_wq ;
 struct o2nm_node* o2nm_get_node_by_num (size_t) ;
 int o2nm_node_put (struct o2nm_node*) ;
 int o2quo_conn_err (int ) ;
 int sock_release (struct socket*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void o2net_stop_listening(struct o2nm_node *node)
{
 struct socket *sock = o2net_listen_sock;
 size_t i;

 BUG_ON(o2net_wq == ((void*)0));
 BUG_ON(o2net_listen_sock == ((void*)0));


 write_lock_bh(&sock->sk->sk_callback_lock);
 sock->sk->sk_data_ready = sock->sk->sk_user_data;
 sock->sk->sk_user_data = ((void*)0);
 write_unlock_bh(&sock->sk->sk_callback_lock);

 for (i = 0; i < ARRAY_SIZE(o2net_nodes); i++) {
  struct o2nm_node *node = o2nm_get_node_by_num(i);
  if (node) {
   o2net_disconnect_node(node);
   o2nm_node_put(node);
  }
 }


 mlog(ML_KTHREAD, "waiting for o2net thread to exit....\n");
 destroy_workqueue(o2net_wq);
 o2net_wq = ((void*)0);

 sock_release(o2net_listen_sock);
 o2net_listen_sock = ((void*)0);

 o2quo_conn_err(node->nd_num);
}
