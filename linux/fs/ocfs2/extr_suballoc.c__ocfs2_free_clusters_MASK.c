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
typedef  int /*<<< orphan*/  u16 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,scalar_t__,unsigned int,void (*) (unsigned int,unsigned long*)) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,unsigned long long,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC9(handle_t *handle,
				struct inode *bitmap_inode,
				struct buffer_head *bitmap_bh,
				u64 start_blk,
				unsigned int num_clusters,
				void (*undo_fn)(unsigned int bit,
						unsigned long *bitmap))
{
	int status;
	u16 bg_start_bit;
	u64 bg_blkno;

	/* You can't ever have a contiguous set of clusters
	 * bigger than a block group bitmap so we never have to worry
	 * about looping on them.
	 * This is expensive. We can safely remove once this stuff has
	 * gotten tested really well. */
	FUNC0(start_blk != FUNC6(bitmap_inode->i_sb,
				FUNC5(bitmap_inode->i_sb,
							 start_blk)));


	FUNC4(bitmap_inode, start_blk, &bg_blkno,
				     &bg_start_bit);

	FUNC8((unsigned long long)bg_blkno,
			(unsigned long long)start_blk,
			bg_start_bit, num_clusters);

	status = FUNC2(handle, bitmap_inode, bitmap_bh,
					   bg_start_bit, bg_blkno,
					   num_clusters, undo_fn);
	if (status < 0) {
		FUNC3(status);
		goto out;
	}

	FUNC7(FUNC1(bitmap_inode->i_sb),
					 num_clusters);

out:
	if (status)
		FUNC3(status);
	return status;
}