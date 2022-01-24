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
struct TYPE_3__ {scalar_t__ advanced; } ;
struct tcp_sock {TYPE_1__ rack; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  icsk_rto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSK_TIME_REO_TIMEOUT ; 
 scalar_t__ TCP_TIMEOUT_MIN ; 
 TYPE_2__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,scalar_t__*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void FUNC5(struct sock *sk)
{
	struct tcp_sock *tp = FUNC3(sk);
	u32 timeout;

	if (!tp->rack.advanced)
		return;

	/* Reset the advanced flag to avoid unnecessary queue scanning */
	tp->rack.advanced = 0;
	FUNC2(sk, &timeout);
	if (timeout) {
		timeout = FUNC4(timeout) + TCP_TIMEOUT_MIN;
		FUNC1(sk, ICSK_TIME_REO_TIMEOUT,
					  timeout, FUNC0(sk)->icsk_rto);
	}
}