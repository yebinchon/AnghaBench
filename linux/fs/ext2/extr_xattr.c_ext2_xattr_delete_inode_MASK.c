#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext2_sb_info {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_count; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_5__ {int /*<<< orphan*/  xattr_sem; scalar_t__ i_file_acl; } ;
struct TYPE_4__ {scalar_t__ h_refcount; scalar_t__ h_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 struct ext2_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ext2_sb_info*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

void
FUNC26(struct inode *inode)
{
	struct buffer_head *bh = NULL;
	struct ext2_sb_info *sbi = FUNC2(inode->i_sb);

	FUNC9(&FUNC1(inode)->xattr_sem);
	if (!FUNC1(inode)->i_file_acl)
		goto cleanup;

	if (!FUNC12(sbi, FUNC1(inode)->i_file_acl, 1)) {
		FUNC13(inode->i_sb, "ext2_xattr_delete_inode",
			"inode %ld: xattr block %d is out of data blocks range",
			inode->i_ino, FUNC1(inode)->i_file_acl);
		goto cleanup;
	}

	bh = FUNC22(inode->i_sb, FUNC1(inode)->i_file_acl);
	if (!bh) {
		FUNC13(inode->i_sb, "ext2_xattr_delete_inode",
			"inode %ld: block %d read error", inode->i_ino,
			FUNC1(inode)->i_file_acl);
		goto cleanup;
	}
	FUNC11(bh, "b_count=%d", FUNC5(&(bh->b_count)));
	if (!FUNC15(FUNC3(bh))) {
		FUNC13(inode->i_sb, "ext2_xattr_delete_inode",
			"inode %ld: bad block %d", inode->i_ino,
			FUNC1(inode)->i_file_acl);
		goto cleanup;
	}
	FUNC19(bh);
	if (FUNC3(bh)->h_refcount == FUNC8(1)) {
		__u32 hash = FUNC18(FUNC3(bh)->h_hash);

		/*
		 * This must happen under buffer lock for ext2_xattr_set2() to
		 * reliably detect freed block
		 */
		FUNC21(FUNC0(inode), hash,
				      bh->b_blocknr);
		FUNC14(inode, FUNC1(inode)->i_file_acl, 1);
		FUNC16(bh);
		FUNC6(bh);
		FUNC24(bh);
	} else {
		FUNC17(&FUNC3(bh)->h_refcount, -1);
		FUNC11(bh, "refcount now=%d",
			FUNC18(FUNC3(bh)->h_refcount));
		FUNC24(bh);
		FUNC20(bh);
		if (FUNC4(inode))
			FUNC23(bh);
		FUNC10(inode, 1);
	}
	FUNC1(inode)->i_file_acl = 0;

cleanup:
	FUNC7(bh);
	FUNC25(&FUNC1(inode)->xattr_sem);
}