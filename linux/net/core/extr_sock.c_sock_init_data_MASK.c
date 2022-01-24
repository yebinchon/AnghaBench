#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; int /*<<< orphan*/  wq; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ offset; int /*<<< orphan*/ * page; } ;
struct sock {size_t sk_family; int sk_peek_off; int sk_rcvlowat; unsigned long sk_max_pacing_rate; unsigned long sk_pacing_rate; int sk_pacing_shift; int sk_incoming_cpu; int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  sk_refcnt; int /*<<< orphan*/  sk_ll_usec; scalar_t__ sk_napi_id; int /*<<< orphan*/  sk_zckey; int /*<<< orphan*/  sk_stamp_seq; int /*<<< orphan*/  sk_stamp; void* sk_sndtimeo; void* sk_rcvtimeo; scalar_t__ sk_write_pending; int /*<<< orphan*/ * sk_peer_cred; int /*<<< orphan*/ * sk_peer_pid; TYPE_1__ sk_frag; int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_error_report; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_callback_lock; scalar_t__ sk_kern_sock; int /*<<< orphan*/  sk_uid; int /*<<< orphan*/  sk_wq; int /*<<< orphan*/  sk_type; int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_sndbuf; int /*<<< orphan*/  sk_rcvbuf; int /*<<< orphan*/  sk_allocation; int /*<<< orphan*/  sk_timer; int /*<<< orphan*/ * sk_send_head; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_uid; } ;
struct TYPE_5__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SK_DEFAULT_STAMP ; 
 TYPE_3__* FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 scalar_t__ af_callback_keys ; 
 int /*<<< orphan*/ * af_family_clock_key_strings ; 
 int /*<<< orphan*/ * af_family_kern_clock_key_strings ; 
 scalar_t__ af_kern_callback_keys ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct socket*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  sock_def_destruct ; 
 int /*<<< orphan*/  sock_def_error_report ; 
 int /*<<< orphan*/  sock_def_readable ; 
 int /*<<< orphan*/  sock_def_wakeup ; 
 int /*<<< orphan*/  sock_def_write_space ; 
 TYPE_2__* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_net_busy_read ; 
 int /*<<< orphan*/  sysctl_rmem_default ; 
 int /*<<< orphan*/  sysctl_wmem_default ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC15(struct socket *sock, struct sock *sk)
{
	FUNC8(sk);
	sk->sk_send_head	=	NULL;

	FUNC14(&sk->sk_timer, NULL, 0);

	sk->sk_allocation	=	GFP_KERNEL;
	sk->sk_rcvbuf		=	sysctl_rmem_default;
	sk->sk_sndbuf		=	sysctl_wmem_default;
	sk->sk_state		=	TCP_CLOSE;
	FUNC10(sk, sock);

	FUNC13(sk, SOCK_ZAPPED);

	if (sock) {
		sk->sk_type	=	sock->type;
		FUNC0(sk->sk_wq, &sock->wq);
		sock->sk	=	sk;
		sk->sk_uid	=	FUNC1(sock)->i_uid;
	} else {
		FUNC0(sk->sk_wq, NULL);
		sk->sk_uid	=	FUNC4(FUNC12(sk)->user_ns, 0);
	}

	FUNC6(&sk->sk_callback_lock);
	if (sk->sk_kern_sock)
		FUNC3(
			&sk->sk_callback_lock,
			af_kern_callback_keys + sk->sk_family,
			af_family_kern_clock_key_strings[sk->sk_family]);
	else
		FUNC3(
			&sk->sk_callback_lock,
			af_callback_keys + sk->sk_family,
			af_family_clock_key_strings[sk->sk_family]);

	sk->sk_state_change	=	sock_def_wakeup;
	sk->sk_data_ready	=	sock_def_readable;
	sk->sk_write_space	=	sock_def_write_space;
	sk->sk_error_report	=	sock_def_error_report;
	sk->sk_destruct		=	sock_def_destruct;

	sk->sk_frag.page	=	NULL;
	sk->sk_frag.offset	=	0;
	sk->sk_peek_off		=	-1;

	sk->sk_peer_pid 	=	NULL;
	sk->sk_peer_cred	=	NULL;
	sk->sk_write_pending	=	0;
	sk->sk_rcvlowat		=	1;
	sk->sk_rcvtimeo		=	MAX_SCHEDULE_TIMEOUT;
	sk->sk_sndtimeo		=	MAX_SCHEDULE_TIMEOUT;

	sk->sk_stamp = SK_DEFAULT_STAMP;
#if BITS_PER_LONG==32
	seqlock_init(&sk->sk_stamp_seq);
#endif
	FUNC2(&sk->sk_zckey, 0);

#ifdef CONFIG_NET_RX_BUSY_POLL
	sk->sk_napi_id		=	0;
	sk->sk_ll_usec		=	sysctl_net_busy_read;
#endif

	sk->sk_max_pacing_rate = ~0UL;
	sk->sk_pacing_rate = ~0UL;
	sk->sk_pacing_shift = 10;
	sk->sk_incoming_cpu = -1;

	FUNC9(sk);
	/*
	 * Before updating sk_refcnt, we must commit prior changes to memory
	 * (Documentation/RCU/rculist_nulls.txt for details)
	 */
	FUNC11();
	FUNC5(&sk->sk_refcnt, 1);
	FUNC2(&sk->sk_drops, 0);
}