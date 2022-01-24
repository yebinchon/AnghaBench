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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int i_blkbits; } ;
struct buffer_head {unsigned int b_size; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_state; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 

int FUNC4(struct inode *inode, u64 lblock, int *new, u64 *dblock, unsigned *extlen)
{
	struct buffer_head bh = { .b_state = 0, .b_blocknr = 0 };
	int ret;
	int create = *new;

	FUNC1(!extlen);
	FUNC1(!dblock);
	FUNC1(!new);

	bh.b_size = FUNC0(inode->i_blkbits + (create ? 0 : 5));
	ret = FUNC3(inode, lblock, &bh, create);
	*extlen = bh.b_size >> inode->i_blkbits;
	*dblock = bh.b_blocknr;
	if (FUNC2(&bh))
		*new = 1;
	else
		*new = 0;
	return ret;
}