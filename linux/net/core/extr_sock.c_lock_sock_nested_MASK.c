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
struct TYPE_2__ {int owned; int /*<<< orphan*/  dep_map; int /*<<< orphan*/  slock; } ;
struct sock {TYPE_1__ sk_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct sock *sk, int subclass)
{
	FUNC2();
	FUNC4(&sk->sk_lock.slock);
	if (sk->sk_lock.owned)
		FUNC0(sk);
	sk->sk_lock.owned = 1;
	FUNC5(&sk->sk_lock.slock);
	/*
	 * The sk_lock has mutex_lock() semantics here:
	 */
	FUNC3(&sk->sk_lock.dep_map, subclass, 0, _RET_IP_);
	FUNC1();
}