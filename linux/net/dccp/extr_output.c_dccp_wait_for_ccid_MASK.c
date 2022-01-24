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
struct sock {scalar_t__ sk_err; int /*<<< orphan*/  sk_write_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 long FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct sock *sk, unsigned long delay)
{
	FUNC0(wait);
	long remaining;

	FUNC3(FUNC7(sk), &wait, TASK_INTERRUPTIBLE);
	sk->sk_write_pending++;
	FUNC4(sk);

	remaining = FUNC5(delay);

	FUNC2(sk);
	sk->sk_write_pending--;
	FUNC1(FUNC7(sk), &wait);

	if (FUNC6(current) || sk->sk_err)
		return -1;
	return remaining;
}