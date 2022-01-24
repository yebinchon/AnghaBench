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
struct tcp_sock {unsigned int snd_cwnd; int /*<<< orphan*/  snd_ssthresh; } ;
struct sock {int dummy; } ;
struct dctcp {unsigned int loss_cwnd; } ;

/* Variables and functions */
 struct dctcp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct dctcp *ca = FUNC0(sk);
	struct tcp_sock *tp = FUNC2(sk);

	ca->loss_cwnd = tp->snd_cwnd;
	tp->snd_ssthresh = FUNC1(tp->snd_cwnd >> 1U, 2U);
}