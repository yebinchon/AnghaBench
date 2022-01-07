
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; } ;
struct TYPE_6__ {int icsk_bind_hash; } ;
struct TYPE_5__ {scalar_t__ inet_num; } ;
struct TYPE_4__ {int orphan_count; int (* destroy ) (struct sock*) ;} ;


 int SOCK_DEAD ;
 scalar_t__ TCP_CLOSE ;
 int WARN_ON (int) ;
 TYPE_3__* inet_csk (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int percpu_counter_dec (int ) ;
 int sk_refcnt_debug_release (struct sock*) ;
 int sk_stream_kill_queues (struct sock*) ;
 int sk_unhashed (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int xfrm_sk_free_policy (struct sock*) ;

void inet_csk_destroy_sock(struct sock *sk)
{
 WARN_ON(sk->sk_state != TCP_CLOSE);
 WARN_ON(!sock_flag(sk, SOCK_DEAD));


 WARN_ON(!sk_unhashed(sk));


 WARN_ON(inet_sk(sk)->inet_num && !inet_csk(sk)->icsk_bind_hash);

 sk->sk_prot->destroy(sk);

 sk_stream_kill_queues(sk);

 xfrm_sk_free_policy(sk);

 sk_refcnt_debug_release(sk);

 percpu_counter_dec(sk->sk_prot->orphan_count);

 sock_put(sk);
}
