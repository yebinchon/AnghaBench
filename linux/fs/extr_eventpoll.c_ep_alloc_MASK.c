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
struct user_struct {int dummy; } ;
struct eventpoll {struct user_struct* user; int /*<<< orphan*/  ovflist; int /*<<< orphan*/  rbr; int /*<<< orphan*/  rdllist; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EP_UNACTIVE_PTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/  FUNC1 (struct user_struct*) ; 
 struct user_struct* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct eventpoll* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct eventpoll **pep)
{
	int error;
	struct user_struct *user;
	struct eventpoll *ep;

	user = FUNC2();
	error = -ENOMEM;
	ep = FUNC4(sizeof(*ep), GFP_KERNEL);
	if (FUNC7(!ep))
		goto free_uid;

	FUNC5(&ep->mtx);
	FUNC6(&ep->lock);
	FUNC3(&ep->wq);
	FUNC3(&ep->poll_wait);
	FUNC0(&ep->rdllist);
	ep->rbr = RB_ROOT_CACHED;
	ep->ovflist = EP_UNACTIVE_PTR;
	ep->user = user;

	*pep = ep;

	return 0;

free_uid:
	FUNC1(user);
	return error;
}