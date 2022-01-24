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
struct sock {int sk_shutdown; } ;
struct llc_sock {int /*<<< orphan*/  p_flag; int /*<<< orphan*/  remote_busy_flag; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC8(struct sock *sk, long timeout)
{
	FUNC0(wait, woken_wake_function);
	struct llc_sock *llc = FUNC3(sk);
	int rc;

	FUNC1(FUNC6(sk), &wait);
	while (1) {
		rc = 0;
		if (FUNC7(sk, &timeout,
				  (sk->sk_shutdown & RCV_SHUTDOWN) ||
				  (!FUNC2(llc->state) &&
				   !llc->remote_busy_flag &&
				   !llc->p_flag), &wait))
			break;
		rc = -ERESTARTSYS;
		if (FUNC5(current))
			break;
		rc = -EAGAIN;
		if (!timeout)
			break;
	}
	FUNC4(FUNC6(sk), &wait);
	return rc;
}