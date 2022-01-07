
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int fastopen_rsk; int * md5sig_info; int out_of_order_queue; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_bind_hash; } ;


 int BUG_ON (int ) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_put_port (struct sock*) ;
 int kfree_rcu (int ,int ) ;
 int rcu ;
 int rcu_access_pointer (int ) ;
 int rcu_dereference_protected (int *,int) ;
 int sk_sockets_allocated_dec (struct sock*) ;
 int skb_rbtree_purge (int *) ;
 int tcp_cleanup_congestion_control (struct sock*) ;
 int tcp_cleanup_ulp (struct sock*) ;
 int tcp_clear_md5_list (struct sock*) ;
 int tcp_clear_xmit_timers (struct sock*) ;
 int tcp_fastopen_active_disable_ofo_check (struct sock*) ;
 int tcp_fastopen_destroy_cipher (struct sock*) ;
 int tcp_free_fastopen_req (struct tcp_sock*) ;
 int tcp_saved_syn_free (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_write_queue_purge (struct sock*) ;
 int trace_tcp_destroy_sock (struct sock*) ;

void tcp_v4_destroy_sock(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 trace_tcp_destroy_sock(sk);

 tcp_clear_xmit_timers(sk);

 tcp_cleanup_congestion_control(sk);

 tcp_cleanup_ulp(sk);


 tcp_write_queue_purge(sk);


 tcp_fastopen_active_disable_ofo_check(sk);


 skb_rbtree_purge(&tp->out_of_order_queue);
 if (inet_csk(sk)->icsk_bind_hash)
  inet_put_port(sk);

 BUG_ON(rcu_access_pointer(tp->fastopen_rsk));


 tcp_free_fastopen_req(tp);
 tcp_fastopen_destroy_cipher(sk);
 tcp_saved_syn_free(tp);

 sk_sockets_allocated_dec(sk);
}
