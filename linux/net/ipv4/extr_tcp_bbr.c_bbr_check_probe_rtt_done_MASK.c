#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcp_sock {int /*<<< orphan*/  snd_cwnd; } ;
struct sock {int dummy; } ;
struct bbr {int /*<<< orphan*/  prior_cwnd; int /*<<< orphan*/  min_rtt_stamp; scalar_t__ probe_rtt_done_stamp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct bbr* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_jiffies32 ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct bbr *bbr = FUNC2(sk);

	if (!(bbr->probe_rtt_done_stamp &&
	      FUNC0(tcp_jiffies32, bbr->probe_rtt_done_stamp)))
		return;

	bbr->min_rtt_stamp = tcp_jiffies32;  /* wait a while until PROBE_RTT */
	tp->snd_cwnd = FUNC3(tp->snd_cwnd, bbr->prior_cwnd);
	FUNC1(sk);
}