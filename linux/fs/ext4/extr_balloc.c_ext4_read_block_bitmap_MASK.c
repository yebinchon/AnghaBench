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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 struct buffer_head* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

struct buffer_head *
FUNC5(struct super_block *sb, ext4_group_t block_group)
{
	struct buffer_head *bh;
	int err;

	bh = FUNC2(sb, block_group);
	if (FUNC1(bh))
		return bh;
	err = FUNC3(sb, block_group, bh);
	if (err) {
		FUNC4(bh);
		return FUNC0(err);
	}
	return bh;
}