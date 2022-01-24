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
struct sock {int sk_shutdown; int sk_err; scalar_t__ sk_state; } ;
struct caifsock {struct sock sk; } ;

/* Variables and functions */
 scalar_t__ CAIF_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ECONNRESET ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC3 (long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct caifsock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC8(struct caifsock *cf_sk,
				  int wait_writeable, long timeo, int *err)
{
	struct sock *sk = &cf_sk->sk;
	FUNC0(wait);
	for (;;) {
		*err = 0;
		if (FUNC7(cf_sk) &&
			(!wait_writeable || FUNC6(&cf_sk->sk)))
			break;
		*err = -ETIMEDOUT;
		if (!timeo)
			break;
		*err = -ERESTARTSYS;
		if (FUNC4(current))
			break;
		FUNC2(FUNC5(sk), &wait, TASK_INTERRUPTIBLE);
		*err = -ECONNRESET;
		if (sk->sk_shutdown & SHUTDOWN_MASK)
			break;
		*err = -sk->sk_err;
		if (sk->sk_err)
			break;
		*err = -EPIPE;
		if (cf_sk->sk.sk_state != CAIF_CONNECTED)
			break;
		timeo = FUNC3(timeo);
	}
	FUNC1(FUNC5(sk), &wait);
	return timeo;
}