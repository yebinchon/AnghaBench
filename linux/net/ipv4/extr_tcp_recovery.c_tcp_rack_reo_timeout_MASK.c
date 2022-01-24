#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_ca_state; scalar_t__ icsk_pending; TYPE_1__* icsk_ca_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  cong_control; } ;

/* Variables and functions */
 scalar_t__ ICSK_TIME_RETRANS ; 
 scalar_t__ TCP_CA_Recovery ; 
 TYPE_2__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 scalar_t__ FUNC3 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct sock *sk)
{
	struct tcp_sock *tp = FUNC6(sk);
	u32 timeout, prior_inflight;

	prior_inflight = FUNC3(tp);
	FUNC4(sk, &timeout);
	if (prior_inflight != FUNC3(tp)) {
		if (FUNC0(sk)->icsk_ca_state != TCP_CA_Recovery) {
			FUNC2(sk, false);
			if (!FUNC0(sk)->icsk_ca_ops->cong_control)
				FUNC1(sk, 1, 0);
		}
		FUNC7(sk);
	}
	if (FUNC0(sk)->icsk_pending != ICSK_TIME_RETRANS)
		FUNC5(sk);
}