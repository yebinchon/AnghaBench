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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct bictcp {int last_max_cwnd; scalar_t__ epoch_start; } ;

/* Variables and functions */
 int BICTCP_BETA_SCALE ; 
 int beta ; 
 scalar_t__ fast_convergence ; 
 struct bictcp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static u32 FUNC3(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC2(sk);
	struct bictcp *ca = FUNC0(sk);

	ca->epoch_start = 0;	/* end of epoch */

	/* Wmax and fast convergence */
	if (tp->snd_cwnd < ca->last_max_cwnd && fast_convergence)
		ca->last_max_cwnd = (tp->snd_cwnd * (BICTCP_BETA_SCALE + beta))
			/ (2 * BICTCP_BETA_SCALE);
	else
		ca->last_max_cwnd = tp->snd_cwnd;

	return FUNC1((tp->snd_cwnd * beta) / BICTCP_BETA_SCALE, 2U);
}