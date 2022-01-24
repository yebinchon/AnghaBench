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
struct nilfs_btree_path {scalar_t__ bp_index; int /*<<< orphan*/  bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_btree_path*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*) ; 
 int FUNC4 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nilfs_bmap *btree,
				    struct nilfs_btree_path *path,
				    int level, __u64 key)
{
	if (level < FUNC4(btree) - 1) {
		do {
			FUNC5(
				FUNC2(path, level),
				path[level].bp_index, key);
			if (!FUNC0(path[level].bp_bh))
				FUNC1(path[level].bp_bh);
		} while ((path[level].bp_index == 0) &&
			 (++level < FUNC4(btree) - 1));
	}

	/* root */
	if (level == FUNC4(btree) - 1) {
		FUNC5(FUNC3(btree),
					 path[level].bp_index, key);
	}
}