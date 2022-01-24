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
struct user_struct {int /*<<< orphan*/  sigpending; } ;
struct task_struct {int dummy; } ;
struct sigqueue {struct user_struct* user; scalar_t__ flags; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RLIMIT_SIGPENDING ; 
 TYPE_1__* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct user_struct*) ; 
 struct user_struct* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sigqueue* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  sigqueue_cachep ; 
 scalar_t__ FUNC11 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sigqueue *
FUNC13(int sig, struct task_struct *t, gfp_t flags, int override_rlimit)
{
	struct sigqueue *q = NULL;
	struct user_struct *user;

	/*
	 * Protect access to @t credentials. This can go away when all
	 * callers hold rcu read lock.
	 */
	FUNC9();
	user = FUNC6(FUNC1(t)->user);
	FUNC3(&user->sigpending);
	FUNC10();

	if (override_rlimit ||
	    FUNC4(&user->sigpending) <=
			FUNC11(t, RLIMIT_SIGPENDING)) {
		q = FUNC7(sigqueue_cachep, flags);
	} else {
		FUNC8(sig);
	}

	if (FUNC12(q == NULL)) {
		FUNC2(&user->sigpending);
		FUNC5(user);
	} else {
		FUNC0(&q->list);
		q->flags = 0;
		q->user = user;
	}

	return q;
}