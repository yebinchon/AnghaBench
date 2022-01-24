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
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct gfs2_leaf {int /*<<< orphan*/  lf_depth; } ;
struct gfs2_inode {scalar_t__ i_depth; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int EIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct gfs2_inode*,scalar_t__,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 int /*<<< orphan*/ * FUNC8 (struct gfs2_inode*) ; 
 int FUNC9 (struct gfs2_inode*,size_t,size_t,scalar_t__,struct buffer_head*,int) ; 

int FUNC10(struct gfs2_inode *dip)
{
	struct buffer_head *bh;
	struct gfs2_leaf *leaf;
	u32 hsize, len;
	u32 index = 0, next_index;
	__be64 *lp;
	u64 leaf_no;
	int error = 0, last;

	hsize = FUNC0(dip->i_depth);

	lp = FUNC8(dip);
	if (FUNC1(lp))
		return FUNC2(lp);

	while (index < hsize) {
		leaf_no = FUNC4(lp[index]);
		if (leaf_no) {
			error = FUNC6(dip, leaf_no, &bh);
			if (error)
				goto out;
			leaf = (struct gfs2_leaf *)bh->b_data;
			len = FUNC0(dip->i_depth - FUNC3(leaf->lf_depth));

			next_index = (index & ~(len - 1)) + len;
			last = ((next_index >= hsize) ? 1 : 0);
			error = FUNC9(dip, index, len, leaf_no, bh,
					     last);
			FUNC5(bh);
			if (error)
				goto out;
			index = next_index;
		} else
			index++;
	}

	if (index != hsize) {
		FUNC7(dip);
		error = -EIO;
	}

out:

	return error;
}