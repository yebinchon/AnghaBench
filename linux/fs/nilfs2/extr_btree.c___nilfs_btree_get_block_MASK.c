#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nilfs_btree_readahead_info {int max_ra_blocks; int index; int ncmax; int /*<<< orphan*/  node; } ;
struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_4__ {struct address_space i_btnode_cache; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 TYPE_2__* FUNC0 (struct nilfs_bmap const*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct address_space*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(const struct nilfs_bmap *btree, __u64 ptr,
				   struct buffer_head **bhp,
				   const struct nilfs_btree_readahead_info *ra)
{
	struct address_space *btnc = &FUNC0(btree)->i_btnode_cache;
	struct buffer_head *bh, *ra_bh;
	sector_t submit_ptr = 0;
	int ret;

	ret = FUNC6(btnc, ptr, 0, REQ_OP_READ, 0, &bh,
					&submit_ptr);
	if (ret) {
		if (ret != -EEXIST)
			return ret;
		goto out_check;
	}

	if (ra) {
		int i, n;
		__u64 ptr2;

		/* read ahead sibling nodes */
		for (n = ra->max_ra_blocks, i = ra->index + 1;
		     n > 0 && i < ra->ncmax; n--, i++) {
			ptr2 = FUNC8(ra->node, i, ra->ncmax);

			ret = FUNC6(btnc, ptr2, 0,
							REQ_OP_READ, REQ_RAHEAD,
							&ra_bh, &submit_ptr);
			if (FUNC5(!ret || ret == -EEXIST))
				FUNC1(ra_bh);
			else if (ret != -EBUSY)
				break;
			if (!FUNC2(bh))
				goto out_no_wait;
		}
	}

	FUNC10(bh);

 out_no_wait:
	if (!FUNC3(bh)) {
		FUNC9(btree->b_inode->i_sb, KERN_ERR,
			  "I/O error reading b-tree node block (ino=%lu, blocknr=%llu)",
			  btree->b_inode->i_ino, (unsigned long long)ptr);
		FUNC1(bh);
		return -EIO;
	}

 out_check:
	if (FUNC7(bh)) {
		FUNC4(bh);
		FUNC1(bh);
		return -EINVAL;
	}

	*bhp = bh;
	return 0;
}