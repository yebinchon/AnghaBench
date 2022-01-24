#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {int snd_cwnd; void* snd_ssthresh; int /*<<< orphan*/  snd_cwnd_stamp; scalar_t__ snd_cwnd_cnt; int /*<<< orphan*/  mss_cache; void* prior_ssthresh; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int probe_size; int search_low; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_pmtu_cookie; TYPE_1__ icsk_mtup; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPMTUPSUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 void* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  tcp_jiffies32 ; 
 int FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct tcp_sock *tp = FUNC5(sk);
	struct inet_connection_sock *icsk = FUNC1(sk);

	/* FIXME: breaks with very large cwnd */
	tp->prior_ssthresh = FUNC3(sk);
	tp->snd_cwnd = tp->snd_cwnd *
		       FUNC4(sk, tp->mss_cache) /
		       icsk->icsk_mtup.probe_size;
	tp->snd_cwnd_cnt = 0;
	tp->snd_cwnd_stamp = tcp_jiffies32;
	tp->snd_ssthresh = FUNC3(sk);

	icsk->icsk_mtup.search_low = icsk->icsk_mtup.probe_size;
	icsk->icsk_mtup.probe_size = 0;
	FUNC6(sk, icsk->icsk_pmtu_cookie);
	FUNC0(FUNC2(sk), LINUX_MIB_TCPMTUPSUCCESS);
}