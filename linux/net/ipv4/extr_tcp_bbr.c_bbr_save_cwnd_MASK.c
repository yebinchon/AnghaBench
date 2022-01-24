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
struct bbr {scalar_t__ prev_ca_state; scalar_t__ mode; int /*<<< orphan*/  prior_cwnd; } ;

/* Variables and functions */
 scalar_t__ BBR_PROBE_RTT ; 
 scalar_t__ TCP_CA_Recovery ; 
 struct bbr* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct tcp_sock *tp = FUNC2(sk);
	struct bbr *bbr = FUNC0(sk);

	if (bbr->prev_ca_state < TCP_CA_Recovery && bbr->mode != BBR_PROBE_RTT)
		bbr->prior_cwnd = tp->snd_cwnd;  /* this cwnd is good enough */
	else  /* loss recovery or BBR_PROBE_RTT have temporarily cut cwnd */
		bbr->prior_cwnd = FUNC1(bbr->prior_cwnd, tp->snd_cwnd);
}