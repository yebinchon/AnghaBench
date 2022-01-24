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
struct inode {int i_blkbits; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head**) ; 
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head**) ; 
 struct buffer_head** FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct inode *ea_inode, void *buf, size_t size)
{
	int blocksize = 1 << ea_inode->i_blkbits;
	int bh_count = (size + blocksize - 1) >> ea_inode->i_blkbits;
	int tail_size = (size % blocksize) ?: blocksize;
	struct buffer_head *bhs_inline[8];
	struct buffer_head **bhs = bhs_inline;
	int i, ret;

	if (bh_count > FUNC0(bhs_inline)) {
		bhs = FUNC4(bh_count, sizeof(*bhs), GFP_NOFS);
		if (!bhs)
			return -ENOMEM;
	}

	ret = FUNC2(ea_inode, 0 /* block */, bh_count,
			       true /* wait */, bhs);
	if (ret)
		goto free_bhs;

	for (i = 0; i < bh_count; i++) {
		/* There shouldn't be any holes in ea_inode. */
		if (!bhs[i]) {
			ret = -EFSCORRUPTED;
			goto put_bhs;
		}
		FUNC5((char *)buf + blocksize * i, bhs[i]->b_data,
		       i < bh_count - 1 ? blocksize : tail_size);
	}
	ret = 0;
put_bhs:
	for (i = 0; i < bh_count; i++)
		FUNC1(bhs[i]);
free_bhs:
	if (bhs != bhs_inline)
		FUNC3(bhs);
	return ret;
}