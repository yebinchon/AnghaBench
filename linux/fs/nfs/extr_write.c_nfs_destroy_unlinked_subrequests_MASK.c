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
struct nfs_page {int /*<<< orphan*/  wb_flags; struct nfs_page* wb_head; int /*<<< orphan*/  wb_kref; struct nfs_page* wb_this_page; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nrequests; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PG_INODE_REF ; 
 int /*<<< orphan*/  PG_REMOVE ; 
 int /*<<< orphan*/  PG_TEARDOWN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct nfs_page *destroy_list,
				 struct nfs_page *old_head,
				 struct inode *inode)
{
	while (destroy_list) {
		struct nfs_page *subreq = destroy_list;

		destroy_list = (subreq->wb_this_page == old_head) ?
				   NULL : subreq->wb_this_page;

		FUNC1(old_head != subreq->wb_head);

		/* make sure old group is not used */
		subreq->wb_this_page = subreq;

		FUNC3(PG_REMOVE, &subreq->wb_flags);

		/* Note: races with nfs_page_group_destroy() */
		if (!FUNC4(&subreq->wb_kref)) {
			/* Check if we raced with nfs_page_group_destroy() */
			if (FUNC8(PG_TEARDOWN, &subreq->wb_flags))
				FUNC5(subreq);
			continue;
		}

		subreq->wb_head = subreq;

		if (FUNC8(PG_INODE_REF, &subreq->wb_flags)) {
			FUNC6(subreq);
			FUNC2(&FUNC0(inode)->nrequests);
		}

		/* subreq is now totally disconnected from page group or any
		 * write / commit lists. last chance to wake any waiters */
		FUNC7(subreq);
	}
}