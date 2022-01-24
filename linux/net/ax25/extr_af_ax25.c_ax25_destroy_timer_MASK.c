#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_5__ {struct sock* sk; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 TYPE_1__* ax25 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  dtimer ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	ax25_cb *ax25 = FUNC3(ax25, t, dtimer);
	struct sock *sk;

	sk=ax25->sk;

	FUNC1(sk);
	FUNC4(sk);
	FUNC0(ax25);
	FUNC2(sk);
	FUNC5(sk);
}