#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 scalar_t__ SOCK_DESTROY_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  atalk_destroy_timer ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct sock *sk)
{
	FUNC1(sk);
	FUNC3(&sk->sk_receive_queue);

	if (FUNC2(sk)) {
		FUNC5(&sk->sk_timer, atalk_destroy_timer, 0);
		sk->sk_timer.expires	= jiffies + SOCK_DESTROY_TIME;
		FUNC0(&sk->sk_timer);
	} else
		FUNC4(sk);
}