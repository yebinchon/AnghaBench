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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cong_control ) (struct sock*,struct rate_sample const*) ;} ;

/* Variables and functions */
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct rate_sample const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, u32 ack, u32 acked_sacked,
			     int flag, const struct rate_sample *rs)
{
	const struct inet_connection_sock *icsk = FUNC0(sk);

	if (icsk->icsk_ca_ops->cong_control) {
		icsk->icsk_ca_ops->cong_control(sk, rs);
		return;
	}

	if (FUNC4(sk)) {
		/* Reduce cwnd if state mandates */
		FUNC3(sk, acked_sacked, flag);
	} else if (FUNC5(sk, flag)) {
		/* Advance cwnd if state allows */
		FUNC2(sk, ack, acked_sacked);
	}
	FUNC6(sk);
}