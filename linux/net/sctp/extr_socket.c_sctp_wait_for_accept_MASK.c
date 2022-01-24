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
struct sctp_endpoint {int /*<<< orphan*/  asocs; } ;
struct TYPE_2__ {struct sctp_endpoint* ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  LISTENING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 long FUNC6 (long) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int FUNC11 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC12(struct sock *sk, long timeo)
{
	struct sctp_endpoint *ep;
	int err = 0;
	FUNC0(wait);

	ep = FUNC7(sk)->ep;


	for (;;) {
		FUNC4(FUNC10(sk), &wait,
					  TASK_INTERRUPTIBLE);

		if (FUNC2(&ep->asocs)) {
			FUNC5(sk);
			timeo = FUNC6(timeo);
			FUNC3(sk);
		}

		err = -EINVAL;
		if (!FUNC8(sk, LISTENING))
			break;

		err = 0;
		if (!FUNC2(&ep->asocs))
			break;

		err = FUNC11(timeo);
		if (FUNC9(current))
			break;

		err = -EAGAIN;
		if (!timeo)
			break;
	}

	FUNC1(FUNC10(sk), &wait);

	return err;
}