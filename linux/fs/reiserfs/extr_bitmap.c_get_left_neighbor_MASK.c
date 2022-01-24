#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct treepath {int pos_in_item; } ;
struct item_head {int dummy; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_3__ {int search_start; int /*<<< orphan*/  formatted_node; struct treepath* path; } ;
typedef  TYPE_1__ reiserfs_blocknr_hint_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct buffer_head* FUNC3 (struct treepath*) ; 
 scalar_t__ FUNC4 (struct item_head*) ; 
 int /*<<< orphan*/ * FUNC5 (struct treepath*) ; 
 struct item_head* FUNC6 (struct treepath*) ; 

__attribute__((used)) static int FUNC7(reiserfs_blocknr_hint_t * hint)
{
	struct treepath *path;
	struct buffer_head *bh;
	struct item_head *ih;
	int pos_in_item;
	__le32 *item;
	int ret = 0;

	/*
	 * reiserfs code can call this function w/o pointer to path
	 * structure supplied; then we rely on supplied search_start
	 */
	if (!hint->path)
		return 0;

	path = hint->path;
	bh = FUNC3(path);
	FUNC1(!bh, "green-4002: Illegal path specified to get_left_neighbor");
	ih = FUNC6(path);
	pos_in_item = path->pos_in_item;
	item = FUNC5(path);

	hint->search_start = bh->b_blocknr;

	/*
	 * for indirect item: go to left and look for the first non-hole entry
	 * in the indirect item
	 */
	if (!hint->formatted_node && FUNC4(ih)) {
		if (pos_in_item == FUNC0(ih))
			pos_in_item--;
		while (pos_in_item >= 0) {
			int t = FUNC2(item, pos_in_item);
			if (t) {
				hint->search_start = t;
				ret = 1;
				break;
			}
			pos_in_item--;
		}
	}

	/* does result value fit into specified region? */
	return ret;
}