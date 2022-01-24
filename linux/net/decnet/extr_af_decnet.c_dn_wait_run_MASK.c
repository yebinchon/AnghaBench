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
struct sock {TYPE_1__* sk_socket; } ;
struct dn_scp {scalar_t__ state; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DN_CC ; 
 scalar_t__ DN_CI ; 
 scalar_t__ DN_RUN ; 
 struct dn_scp* FUNC1 (struct sock*) ; 
 int EALREADY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 long FUNC6 (long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*) ; 
 int FUNC10 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC11(struct sock *sk, long *timeo)
{
	struct dn_scp *scp = FUNC1(sk);
	FUNC0(wait);
	int err = 0;

	if (scp->state == DN_RUN)
		goto out;

	if (!*timeo)
		return -EALREADY;

	FUNC4(FUNC8(sk), &wait, TASK_INTERRUPTIBLE);
	for(;;) {
		FUNC5(sk);
		if (scp->state == DN_CI || scp->state == DN_CC)
			*timeo = FUNC6(*timeo);
		FUNC3(sk);
		err = 0;
		if (scp->state == DN_RUN)
			break;
		err = FUNC9(sk);
		if (err)
			break;
		err = FUNC10(*timeo);
		if (FUNC7(current))
			break;
		err = -ETIMEDOUT;
		if (!*timeo)
			break;
		FUNC4(FUNC8(sk), &wait, TASK_INTERRUPTIBLE);
	}
	FUNC2(FUNC8(sk), &wait);
out:
	if (err == 0) {
		sk->sk_socket->state = SS_CONNECTED;
	} else if (scp->state != DN_CI && scp->state != DN_CC) {
		sk->sk_socket->state = SS_UNCONNECTED;
	}
	return err;
}