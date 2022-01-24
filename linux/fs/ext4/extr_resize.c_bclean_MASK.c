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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int ENOMEM ; 
 struct buffer_head* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct buffer_head *FUNC8(handle_t *handle, struct super_block *sb,
				  ext4_fsblk_t blk)
{
	struct buffer_head *bh;
	int err;

	bh = FUNC5(sb, blk);
	if (FUNC7(!bh))
		return FUNC1(-ENOMEM);
	FUNC0(bh, "get_write_access");
	if ((err = FUNC3(handle, bh))) {
		FUNC2(bh);
		bh = FUNC1(err);
	} else {
		FUNC4(bh->b_data, 0, sb->s_blocksize);
		FUNC6(bh);
	}

	return bh;
}