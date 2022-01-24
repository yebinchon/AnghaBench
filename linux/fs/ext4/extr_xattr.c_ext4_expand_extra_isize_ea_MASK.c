#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_2__* i_sb; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_sb_info {int s_inode_size; TYPE_1__* s_es; } ;
struct ext4_inode {int dummy; } ;
struct buffer_head {int b_size; void* b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_8__ {int i_extra_isize; scalar_t__ i_file_acl; } ;
struct TYPE_7__ {size_t s_blocksize; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_mnt_count; int /*<<< orphan*/  s_min_extra_isize; } ;

/* Variables and functions */
 void* FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (struct buffer_head*) ; 
 int ENOSPC ; 
 int EXT4_GOOD_OLD_INODE_SIZE ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 struct ext4_sb_info* FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC5 (struct inode*,struct ext4_inode*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 struct buffer_head* FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct buffer_head*) ; 
 size_t FUNC12 (void*,size_t*,void*,int*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct ext4_inode*,int,size_t,size_t,int*) ; 
 int /*<<< orphan*/  FUNC14 (void*,int,void*,void*,int) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct inode*,struct ext4_xattr_ibody_header*,void*) ; 

int FUNC17(struct inode *inode, int new_extra_isize,
			       struct ext4_inode *raw_inode, handle_t *handle)
{
	struct ext4_xattr_ibody_header *header;
	struct ext4_sb_info *sbi = FUNC3(inode->i_sb);
	static unsigned int mnt_count;
	size_t min_offs;
	size_t ifree, bfree;
	int total_ino;
	void *base, *end;
	int error = 0, tried_min_extra_isize = 0;
	int s_min_extra_isize = FUNC15(sbi->s_es->s_min_extra_isize);
	int isize_diff;	/* How much do we need to grow i_extra_isize */

retry:
	isize_diff = new_extra_isize - FUNC2(inode)->i_extra_isize;
	if (FUNC2(inode)->i_extra_isize >= new_extra_isize)
		return 0;

	header = FUNC5(inode, raw_inode);

	/*
	 * Check if enough free space is available in the inode to shift the
	 * entries ahead by new_extra_isize.
	 */

	base = FUNC4(header);
	end = (void *)raw_inode + FUNC3(inode->i_sb)->s_inode_size;
	min_offs = end - base;
	total_ino = sizeof(struct ext4_xattr_ibody_header) + sizeof(u32);

	error = FUNC16(inode, header, end);
	if (error)
		goto cleanup;

	ifree = FUNC12(base, &min_offs, base, &total_ino);
	if (ifree >= isize_diff)
		goto shift;

	/*
	 * Enough free space isn't available in the inode, check if
	 * EA block can hold new_extra_isize bytes.
	 */
	if (FUNC2(inode)->i_file_acl) {
		struct buffer_head *bh;

		bh = FUNC9(inode->i_sb, FUNC2(inode)->i_file_acl, REQ_PRIO);
		if (FUNC6(bh)) {
			error = FUNC7(bh);
			goto cleanup;
		}
		error = FUNC11(inode, bh);
		if (error) {
			FUNC8(bh);
			goto cleanup;
		}
		base = FUNC1(bh);
		end = bh->b_data + bh->b_size;
		min_offs = end - base;
		bfree = FUNC12(FUNC0(bh), &min_offs, base,
					      NULL);
		FUNC8(bh);
		if (bfree + ifree < isize_diff) {
			if (!tried_min_extra_isize && s_min_extra_isize) {
				tried_min_extra_isize++;
				new_extra_isize = s_min_extra_isize;
				goto retry;
			}
			error = -ENOSPC;
			goto cleanup;
		}
	} else {
		bfree = inode->i_sb->s_blocksize;
	}

	error = FUNC13(handle, inode, raw_inode,
					    isize_diff, ifree, bfree,
					    &total_ino);
	if (error) {
		if (error == -ENOSPC && !tried_min_extra_isize &&
		    s_min_extra_isize) {
			tried_min_extra_isize++;
			new_extra_isize = s_min_extra_isize;
			goto retry;
		}
		goto cleanup;
	}
shift:
	/* Adjust the offsets and shift the remaining entries ahead */
	FUNC14(FUNC4(header), FUNC2(inode)->i_extra_isize
			- new_extra_isize, (void *)raw_inode +
			EXT4_GOOD_OLD_INODE_SIZE + new_extra_isize,
			(void *)header, total_ino);
	FUNC2(inode)->i_extra_isize = new_extra_isize;

cleanup:
	if (error && (mnt_count != FUNC15(sbi->s_es->s_mnt_count))) {
		FUNC10(inode->i_sb, "Unable to expand inode %lu. Delete some EAs or run e2fsck.",
			     inode->i_ino);
		mnt_count = FUNC15(sbi->s_es->s_mnt_count);
	}
	return error;
}