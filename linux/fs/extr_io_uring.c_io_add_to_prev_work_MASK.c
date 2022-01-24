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
struct io_kiocb {int flags; int /*<<< orphan*/  list; } ;
struct async_list {int /*<<< orphan*/  lock; int /*<<< orphan*/  cnt; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int REQ_F_SEQ_PREV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct async_list *list, struct io_kiocb *req)
{
	bool ret;

	if (!list)
		return false;
	if (!(req->flags & REQ_F_SEQ_PREV))
		return false;
	if (!FUNC0(&list->cnt))
		return false;

	ret = true;
	FUNC4(&list->lock);
	FUNC1(&req->list, &list->list);
	/*
	 * Ensure we see a simultaneous modification from io_sq_wq_submit_work()
	 */
	FUNC3();
	if (!FUNC0(&list->cnt)) {
		FUNC2(&req->list);
		ret = false;
	}
	FUNC5(&list->lock);
	return ret;
}