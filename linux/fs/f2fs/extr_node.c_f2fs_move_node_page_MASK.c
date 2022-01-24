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
struct writeback_control {int nr_to_write; int /*<<< orphan*/  for_reclaim; int /*<<< orphan*/  sync_mode; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FG_GC ; 
 int /*<<< orphan*/  FS_GC_NODE_IO ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 scalar_t__ FUNC1 (struct page*,int,int /*<<< orphan*/ *,struct writeback_control*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct page *node_page, int gc_type)
{
	int err = 0;

	if (gc_type == FG_GC) {
		struct writeback_control wbc = {
			.sync_mode = WB_SYNC_ALL,
			.nr_to_write = 1,
			.for_reclaim = 0,
		};

		FUNC4(node_page, NODE, true, true);

		FUNC5(node_page);

		if (!FUNC2(node_page)) {
			err = -EAGAIN;
			goto out_page;
		}

		if (FUNC1(node_page, false, NULL,
					&wbc, false, FS_GC_NODE_IO, NULL)) {
			err = -EAGAIN;
			FUNC6(node_page);
		}
		goto release_page;
	} else {
		/* set page dirty and write it */
		if (!FUNC0(node_page))
			FUNC5(node_page);
	}
out_page:
	FUNC6(node_page);
release_page:
	FUNC3(node_page, 0);
	return err;
}