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
struct sock {int dummy; } ;
struct x25_sock {struct sock sk; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ X25_STATE_3 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct x25_sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  timer ; 
 struct x25_sock* x25 ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct x25_sock *x25 = FUNC2(x25, t, timer);
	struct sock *sk = &x25->sk;

	FUNC0(sk);
	if (FUNC3(sk)) { /* can currently only occur in state 3 */
		if (FUNC5(sk)->state == X25_STATE_3)
			FUNC6(sk);
	} else
		FUNC4(sk);
	FUNC1(sk);
}