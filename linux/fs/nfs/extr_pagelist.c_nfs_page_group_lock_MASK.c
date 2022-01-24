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
struct nfs_page {int /*<<< orphan*/  wb_flags; struct nfs_page* wb_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_CONTENDED1 ; 
 int /*<<< orphan*/  PG_HEADLOCK ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct nfs_page *req)
{
	struct nfs_page *head = req->wb_head;

	FUNC0(head != head->wb_head);

	if (!FUNC3(PG_HEADLOCK, &head->wb_flags))
		return 0;

	FUNC1(PG_CONTENDED1, &head->wb_flags);
	FUNC2();
	return FUNC4(&head->wb_flags, PG_HEADLOCK,
				TASK_UNINTERRUPTIBLE);
}