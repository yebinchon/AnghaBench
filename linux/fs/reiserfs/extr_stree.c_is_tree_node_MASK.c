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
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int DISK_LEAF_NODE_LEVEL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int,int) ; 

__attribute__((used)) static int FUNC4(struct buffer_head *bh, int level)
{
	if (FUNC0(bh) != level) {
		FUNC3(NULL, "reiserfs-5090", "node level %d does "
				 "not match to the expected one %d",
				 FUNC0(bh), level);
		return 0;
	}
	if (level == DISK_LEAF_NODE_LEVEL)
		return FUNC2(bh->b_data, bh->b_size, bh);

	return FUNC1(bh->b_data, bh->b_size, bh);
}