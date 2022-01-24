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
struct super_block {int dummy; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 struct super_block* FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

int FUNC5(struct block_device *bdev, bool kill_dirty)
{
	struct super_block *sb = FUNC1(bdev);
	int res = 0;

	if (sb) {
		/*
		 * no need to lock the super, get_super holds the
		 * read mutex so the filesystem cannot go away
		 * under us (->put_super runs with the write lock
		 * hold).
		 */
		FUNC4(sb);
		res = FUNC3(sb, kill_dirty);
		FUNC0(sb);
	}
	FUNC2(bdev);
	return res;
}