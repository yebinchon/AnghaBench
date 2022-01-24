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
struct sock {int /*<<< orphan*/  sk_write_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

int FUNC7(struct sock *sk, long *timeo)
{
	int rc = 0;
	FUNC0(wait, woken_wake_function);

	FUNC1(FUNC4(sk), &wait);
	while (1) {
		if (!*timeo) {
			rc = -EAGAIN;
			break;
		}

		if (FUNC3(current)) {
			rc = FUNC6(*timeo);
			break;
		}

		if (FUNC5(sk, timeo, !sk->sk_write_pending, &wait))
			break;
	}
	FUNC2(FUNC4(sk), &wait);
	return rc;
}