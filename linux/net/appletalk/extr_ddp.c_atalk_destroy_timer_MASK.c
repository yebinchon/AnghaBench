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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; } ;

/* Variables and functions */
 scalar_t__ SOCK_DESTROY_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct sock* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct sock* sk ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  sk_timer ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct sock *sk = FUNC1(sk, t, sk_timer);

	if (FUNC2(sk)) {
		sk->sk_timer.expires = jiffies + SOCK_DESTROY_TIME;
		FUNC0(&sk->sk_timer);
	} else
		FUNC3(sk);
}