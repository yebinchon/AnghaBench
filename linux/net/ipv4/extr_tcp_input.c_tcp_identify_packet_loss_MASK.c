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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ retrans_out; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FLAG_LOST_RETRANS ; 
 int FLAG_SND_UNA_ADVANCED ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, int *ack_flag)
{
	struct tcp_sock *tp = FUNC5(sk);

	if (FUNC4(sk))
		return;

	if (FUNC6(FUNC1(tp))) {
		FUNC2(sk, *ack_flag & FLAG_SND_UNA_ADVANCED);
	} else if (FUNC0(sk)) {
		u32 prior_retrans = tp->retrans_out;

		FUNC3(sk);
		if (prior_retrans > tp->retrans_out)
			*ack_flag |= FLAG_LOST_RETRANS;
	}
}