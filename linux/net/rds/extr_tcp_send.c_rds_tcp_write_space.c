
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {void (* sk_write_space ) (struct sock*) ;int sk_sndbuf; TYPE_1__* sk_socket; int sk_callback_lock; int sk_wmem_alloc; struct rds_conn_path* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_write_space ) (struct sock*) ;struct rds_tcp_connection* t_last_seen_una; } ;
struct rds_conn_path {int cp_send_w; int cp_conn; struct rds_tcp_connection* cp_transport_data; } ;
struct TYPE_2__ {int flags; } ;


 int SOCK_NOSPACE ;
 int queue_delayed_work (int ,int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rds_destroy_pending (int ) ;
 int rds_send_path_drop_acked (struct rds_conn_path*,struct rds_tcp_connection*,int ) ;
 int rds_tcp_is_acked ;
 struct rds_tcp_connection* rds_tcp_snd_una (struct rds_tcp_connection*) ;
 int rds_tcp_stats_inc (int ) ;
 int rds_wq ;
 int rdsdebug (char*,struct rds_tcp_connection*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int refcount_read (int *) ;
 int s_tcp_write_space_calls ;
 int set_bit (int ,int *) ;

void rds_tcp_write_space(struct sock *sk)
{
 void (*write_space)(struct sock *sk);
 struct rds_conn_path *cp;
 struct rds_tcp_connection *tc;

 read_lock_bh(&sk->sk_callback_lock);
 cp = sk->sk_user_data;
 if (!cp) {
  write_space = sk->sk_write_space;
  goto out;
 }

 tc = cp->cp_transport_data;
 rdsdebug("write_space for tc %p\n", tc);
 write_space = tc->t_orig_write_space;
 rds_tcp_stats_inc(s_tcp_write_space_calls);

 rdsdebug("tcp una %u\n", rds_tcp_snd_una(tc));
 tc->t_last_seen_una = rds_tcp_snd_una(tc);
 rds_send_path_drop_acked(cp, rds_tcp_snd_una(tc), rds_tcp_is_acked);

 rcu_read_lock();
 if ((refcount_read(&sk->sk_wmem_alloc) << 1) <= sk->sk_sndbuf &&
     !rds_destroy_pending(cp->cp_conn))
  queue_delayed_work(rds_wq, &cp->cp_send_w, 0);
 rcu_read_unlock();

out:
 read_unlock_bh(&sk->sk_callback_lock);
 write_space(sk);

 if (sk->sk_socket)
  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
}
