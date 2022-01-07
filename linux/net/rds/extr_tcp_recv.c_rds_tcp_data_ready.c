
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_data_ready ) (struct sock*) ;int sk_callback_lock; struct rds_conn_path* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_data_ready ) (struct sock*) ;} ;
struct rds_conn_path {int cp_recv_w; int cp_conn; struct rds_tcp_connection* cp_transport_data; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int queue_delayed_work (int ,int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rds_destroy_pending (int ) ;
 int rds_tcp_read_sock (struct rds_conn_path*,int ) ;
 int rds_tcp_stats_inc (int ) ;
 int rds_wq ;
 int rdsdebug (char*,struct sock*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int s_tcp_data_ready_calls ;

void rds_tcp_data_ready(struct sock *sk)
{
 void (*ready)(struct sock *sk);
 struct rds_conn_path *cp;
 struct rds_tcp_connection *tc;

 rdsdebug("data ready sk %p\n", sk);

 read_lock_bh(&sk->sk_callback_lock);
 cp = sk->sk_user_data;
 if (!cp) {
  ready = sk->sk_data_ready;
  goto out;
 }

 tc = cp->cp_transport_data;
 ready = tc->t_orig_data_ready;
 rds_tcp_stats_inc(s_tcp_data_ready_calls);

 if (rds_tcp_read_sock(cp, GFP_ATOMIC) == -ENOMEM) {
  rcu_read_lock();
  if (!rds_destroy_pending(cp->cp_conn))
   queue_delayed_work(rds_wq, &cp->cp_recv_w, 0);
  rcu_read_unlock();
 }
out:
 read_unlock_bh(&sk->sk_callback_lock);
 ready(sk);
}
