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
typedef  int u32 ;
struct tcp_sock {int snd_cwnd; scalar_t__ snd_cwnd_used; int /*<<< orphan*/  snd_cwnd_stamp; int /*<<< orphan*/  snd_ssthresh; } ;
struct sock {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {scalar_t__ icsk_rto; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA_EVENT_CWND_RESTART ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_jiffies32 ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

void FUNC8(struct sock *sk, s32 delta)
{
	struct tcp_sock *tp = FUNC7(sk);
	u32 restart_cwnd = FUNC6(tp, FUNC0(sk));
	u32 cwnd = tp->snd_cwnd;

	FUNC4(sk, CA_EVENT_CWND_RESTART);

	tp->snd_ssthresh = FUNC5(sk);
	restart_cwnd = FUNC3(restart_cwnd, cwnd);

	while ((delta -= FUNC1(sk)->icsk_rto) > 0 && cwnd > restart_cwnd)
		cwnd >>= 1;
	tp->snd_cwnd = FUNC2(cwnd, restart_cwnd);
	tp->snd_cwnd_stamp = tcp_jiffies32;
	tp->snd_cwnd_used = 0;
}