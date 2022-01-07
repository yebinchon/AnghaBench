
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; int wq; int type; } ;
struct TYPE_4__ {scalar_t__ offset; int * page; } ;
struct sock {size_t sk_family; int sk_peek_off; int sk_rcvlowat; unsigned long sk_max_pacing_rate; unsigned long sk_pacing_rate; int sk_pacing_shift; int sk_incoming_cpu; int sk_drops; int sk_refcnt; int sk_ll_usec; scalar_t__ sk_napi_id; int sk_zckey; int sk_stamp_seq; int sk_stamp; void* sk_sndtimeo; void* sk_rcvtimeo; scalar_t__ sk_write_pending; int * sk_peer_cred; int * sk_peer_pid; TYPE_1__ sk_frag; int sk_destruct; int sk_error_report; int sk_write_space; int sk_data_ready; int sk_state_change; int sk_callback_lock; scalar_t__ sk_kern_sock; int sk_uid; int sk_wq; int sk_type; int sk_state; int sk_sndbuf; int sk_rcvbuf; int sk_allocation; int sk_timer; int * sk_send_head; } ;
struct TYPE_6__ {int i_uid; } ;
struct TYPE_5__ {int user_ns; } ;


 int GFP_KERNEL ;
 void* MAX_SCHEDULE_TIMEOUT ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SK_DEFAULT_STAMP ;
 TYPE_3__* SOCK_INODE (struct socket*) ;
 int SOCK_ZAPPED ;
 int TCP_CLOSE ;
 scalar_t__ af_callback_keys ;
 int * af_family_clock_key_strings ;
 int * af_family_kern_clock_key_strings ;
 scalar_t__ af_kern_callback_keys ;
 int atomic_set (int *,int ) ;
 int lockdep_set_class_and_name (int *,scalar_t__,int ) ;
 int make_kuid (int ,int ) ;
 int refcount_set (int *,int) ;
 int rwlock_init (int *) ;
 int seqlock_init (int *) ;
 int sk_init_common (struct sock*) ;
 int sk_rx_queue_clear (struct sock*) ;
 int sk_set_socket (struct sock*,struct socket*) ;
 int smp_wmb () ;
 int sock_def_destruct ;
 int sock_def_error_report ;
 int sock_def_readable ;
 int sock_def_wakeup ;
 int sock_def_write_space ;
 TYPE_2__* sock_net (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int sysctl_net_busy_read ;
 int sysctl_rmem_default ;
 int sysctl_wmem_default ;
 int timer_setup (int *,int *,int ) ;

void sock_init_data(struct socket *sock, struct sock *sk)
{
 sk_init_common(sk);
 sk->sk_send_head = ((void*)0);

 timer_setup(&sk->sk_timer, ((void*)0), 0);

 sk->sk_allocation = GFP_KERNEL;
 sk->sk_rcvbuf = sysctl_rmem_default;
 sk->sk_sndbuf = sysctl_wmem_default;
 sk->sk_state = TCP_CLOSE;
 sk_set_socket(sk, sock);

 sock_set_flag(sk, SOCK_ZAPPED);

 if (sock) {
  sk->sk_type = sock->type;
  RCU_INIT_POINTER(sk->sk_wq, &sock->wq);
  sock->sk = sk;
  sk->sk_uid = SOCK_INODE(sock)->i_uid;
 } else {
  RCU_INIT_POINTER(sk->sk_wq, ((void*)0));
  sk->sk_uid = make_kuid(sock_net(sk)->user_ns, 0);
 }

 rwlock_init(&sk->sk_callback_lock);
 if (sk->sk_kern_sock)
  lockdep_set_class_and_name(
   &sk->sk_callback_lock,
   af_kern_callback_keys + sk->sk_family,
   af_family_kern_clock_key_strings[sk->sk_family]);
 else
  lockdep_set_class_and_name(
   &sk->sk_callback_lock,
   af_callback_keys + sk->sk_family,
   af_family_clock_key_strings[sk->sk_family]);

 sk->sk_state_change = sock_def_wakeup;
 sk->sk_data_ready = sock_def_readable;
 sk->sk_write_space = sock_def_write_space;
 sk->sk_error_report = sock_def_error_report;
 sk->sk_destruct = sock_def_destruct;

 sk->sk_frag.page = ((void*)0);
 sk->sk_frag.offset = 0;
 sk->sk_peek_off = -1;

 sk->sk_peer_pid = ((void*)0);
 sk->sk_peer_cred = ((void*)0);
 sk->sk_write_pending = 0;
 sk->sk_rcvlowat = 1;
 sk->sk_rcvtimeo = MAX_SCHEDULE_TIMEOUT;
 sk->sk_sndtimeo = MAX_SCHEDULE_TIMEOUT;

 sk->sk_stamp = SK_DEFAULT_STAMP;



 atomic_set(&sk->sk_zckey, 0);






 sk->sk_max_pacing_rate = ~0UL;
 sk->sk_pacing_rate = ~0UL;
 sk->sk_pacing_shift = 10;
 sk->sk_incoming_cpu = -1;

 sk_rx_queue_clear(sk);




 smp_wmb();
 refcount_set(&sk->sk_refcnt, 1);
 atomic_set(&sk->sk_drops, 0);
}
