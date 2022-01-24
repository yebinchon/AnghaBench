#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ep; } ;
struct TYPE_3__ {int /*<<< orphan*/  asocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 long FUNC6 (long) ; 
 TYPE_2__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC10(struct sock *sk, long timeout)
{
	FUNC0(wait);

	do {
		FUNC4(FUNC9(sk), &wait, TASK_INTERRUPTIBLE);
		if (FUNC2(&FUNC7(sk)->ep->asocs))
			break;
		FUNC5(sk);
		timeout = FUNC6(timeout);
		FUNC3(sk);
	} while (!FUNC8(current) && timeout);

	FUNC1(FUNC9(sk), &wait);
}