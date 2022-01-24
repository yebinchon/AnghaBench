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
struct tcp_sock {int sacked_out; int reordering; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int,int) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, int fast_rexmit)
{
	struct tcp_sock *tp = FUNC2(sk);

	if (FUNC0(tp)) {
		int sacked_upto = tp->sacked_out - tp->reordering;
		if (sacked_upto >= 0)
			FUNC1(sk, sacked_upto, 0);
		else if (fast_rexmit)
			FUNC1(sk, 1, 1);
	}
}