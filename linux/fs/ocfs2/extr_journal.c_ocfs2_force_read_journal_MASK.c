#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ocfs2_super {TYPE_1__* sb; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ; 

__attribute__((used)) static int FUNC8(struct inode *inode)
{
	int status = 0;
	int i;
	u64 v_blkno, p_blkno, p_blocks, num_blocks;
	struct buffer_head *bh = NULL;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);

	num_blocks = FUNC5(inode->i_sb, FUNC3(inode));
	v_blkno = 0;
	while (v_blkno < num_blocks) {
		status = FUNC6(inode, v_blkno,
						     &p_blkno, &p_blocks, NULL);
		if (status < 0) {
			FUNC4(status);
			goto bail;
		}

		for (i = 0; i < p_blocks; i++, p_blkno++) {
			bh = FUNC1(osb->sb->s_bdev, p_blkno,
					osb->sb->s_blocksize);
			/* block not cached. */
			if (!bh)
				continue;

			FUNC2(bh);
			bh = NULL;
			/* We are reading journal data which should not
			 * be put in the uptodate cache.
			 */
			status = FUNC7(osb, p_blkno, 1, &bh);
			if (status < 0) {
				FUNC4(status);
				goto bail;
			}

			FUNC2(bh);
			bh = NULL;
		}

		v_blkno += p_blocks;
	}

bail:
	return status;
}