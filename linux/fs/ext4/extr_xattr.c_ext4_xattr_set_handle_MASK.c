#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ctime; TYPE_2__* i_sb; } ;
struct ext4_xattr_info {int name_index; char const* name; void const* value; size_t value_len; int in_inode; } ;
struct TYPE_14__ {struct buffer_head* bh; } ;
struct TYPE_12__ {scalar_t__ not_found; int /*<<< orphan*/  base; } ;
struct ext4_xattr_ibody_find {TYPE_3__ iloc; TYPE_1__ s; } ;
struct ext4_xattr_block_find {struct buffer_head* bh; TYPE_1__ s; } ;
struct ext4_inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_15__ {int /*<<< orphan*/  s_inode_size; } ;
struct TYPE_13__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_11__ {scalar_t__ i_file_acl; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOSPC ; 
 int ERANGE ; 
 TYPE_10__* FUNC0 (struct inode*) ; 
 TYPE_8__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  EXT4_STATE_NEW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int FUNC7 (TYPE_2__*,struct inode*,struct buffer_head*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct inode*,TYPE_3__*) ; 
 struct ext4_inode* FUNC16 (TYPE_3__*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,TYPE_3__*) ; 
 scalar_t__ FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int*) ; 
 int FUNC21 (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_block_find*) ; 
 int FUNC22 (int /*<<< orphan*/ *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_block_find*) ; 
 struct buffer_head* FUNC23 (struct inode*) ; 
 int FUNC24 (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ; 
 int FUNC25 (int /*<<< orphan*/ *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC27 (TYPE_1__*,struct ext4_xattr_info*) ; 
 int /*<<< orphan*/  FUNC28 (struct ext4_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (char const*) ; 

int
FUNC30(handle_t *handle, struct inode *inode, int name_index,
		      const char *name, const void *value, size_t value_len,
		      int flags)
{
	struct ext4_xattr_info i = {
		.name_index = name_index,
		.name = name,
		.value = value,
		.value_len = value_len,
		.in_inode = 0,
	};
	struct ext4_xattr_ibody_find is = {
		.s = { .not_found = -ENODATA, },
	};
	struct ext4_xattr_block_find bs = {
		.s = { .not_found = -ENODATA, },
	};
	int no_expand;
	int error;

	if (!name)
		return -EINVAL;
	if (FUNC29(name) > 255)
		return -ERANGE;

	FUNC19(inode, &no_expand);

	/* Check journal credits under write lock. */
	if (FUNC13(handle)) {
		struct buffer_head *bh;
		int credits;

		bh = FUNC23(inode);
		if (FUNC4(bh)) {
			error = FUNC6(bh);
			goto cleanup;
		}

		credits = FUNC7(inode->i_sb, inode, bh,
						   value_len,
						   flags & XATTR_CREATE);
		FUNC8(bh);

		if (!FUNC11(handle, credits)) {
			error = -ENOSPC;
			goto cleanup;
		}
	}

	error = FUNC17(handle, inode, &is.iloc);
	if (error)
		goto cleanup;

	if (FUNC18(inode, EXT4_STATE_NEW)) {
		struct ext4_inode *raw_inode = FUNC16(&is.iloc);
		FUNC28(raw_inode, 0, FUNC1(inode->i_sb)->s_inode_size);
		FUNC10(inode, EXT4_STATE_NEW);
	}

	error = FUNC24(inode, &i, &is);
	if (error)
		goto cleanup;
	if (is.s.not_found)
		error = FUNC21(inode, &i, &bs);
	if (error)
		goto cleanup;
	if (is.s.not_found && bs.s.not_found) {
		error = -ENODATA;
		if (flags & XATTR_REPLACE)
			goto cleanup;
		error = 0;
		if (!value)
			goto cleanup;
	} else {
		error = -EEXIST;
		if (flags & XATTR_CREATE)
			goto cleanup;
	}

	if (!value) {
		if (!is.s.not_found)
			error = FUNC25(handle, inode, &i, &is);
		else if (!bs.s.not_found)
			error = FUNC22(handle, inode, &i, &bs);
	} else {
		error = 0;
		/* Xattr value did not change? Save us some work and bail out */
		if (!is.s.not_found && FUNC27(&is.s, &i))
			goto cleanup;
		if (!bs.s.not_found && FUNC27(&bs.s, &i))
			goto cleanup;

		if (FUNC14(inode->i_sb) &&
		    (FUNC3(i.value_len) >
			FUNC2(inode->i_sb->s_blocksize)))
			i.in_inode = 1;
retry_inode:
		error = FUNC25(handle, inode, &i, &is);
		if (!error && !bs.s.not_found) {
			i.value = NULL;
			error = FUNC22(handle, inode, &i, &bs);
		} else if (error == -ENOSPC) {
			if (FUNC0(inode)->i_file_acl && !bs.s.base) {
				FUNC8(bs.bh);
				bs.bh = NULL;
				error = FUNC21(inode, &i, &bs);
				if (error)
					goto cleanup;
			}
			error = FUNC22(handle, inode, &i, &bs);
			if (!error && !is.s.not_found) {
				i.value = NULL;
				error = FUNC25(handle, inode, &i,
							     &is);
			} else if (error == -ENOSPC) {
				/*
				 * Xattr does not fit in the block, store at
				 * external inode if possible.
				 */
				if (FUNC14(inode->i_sb) &&
				    !i.in_inode) {
					i.in_inode = 1;
					goto retry_inode;
				}
			}
		}
	}
	if (!error) {
		FUNC26(handle, inode->i_sb);
		inode->i_ctime = FUNC9(inode);
		if (!value)
			no_expand = 0;
		error = FUNC15(handle, inode, &is.iloc);
		/*
		 * The bh is consumed by ext4_mark_iloc_dirty, even with
		 * error != 0.
		 */
		is.iloc.bh = NULL;
		if (FUNC5(inode))
			FUNC12(handle);
	}

cleanup:
	FUNC8(is.iloc.bh);
	FUNC8(bs.bh);
	FUNC20(inode, &no_expand);
	return error;
}