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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct jfs_inode_info {int mode2; scalar_t__ xtlid; scalar_t__ atltail; scalar_t__ atlhead; scalar_t__ blid; scalar_t__ bxflag; scalar_t__ btindex; scalar_t__ btorder; scalar_t__ acltype; scalar_t__ next_index; int /*<<< orphan*/  ea; int /*<<< orphan*/  acl; scalar_t__ cflag; int /*<<< orphan*/  otime; int /*<<< orphan*/  saved_gid; int /*<<< orphan*/  saved_uid; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_flags; scalar_t__ i_generation; TYPE_1__ i_ctime; TYPE_1__ i_atime; TYPE_1__ i_mtime; scalar_t__ i_blocks; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  dxd_t ;
struct TYPE_4__ {int /*<<< orphan*/  gengen; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int IDIRECTORY ; 
 int INLINEEA ; 
 int ISPARSE ; 
 int JFS_APPEND_FL ; 
 int JFS_DIRSYNC_FL ; 
 int JFS_FL_INHERIT ; 
 int JFS_IMMUTABLE_FL ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 TYPE_1__ FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC19 (struct super_block*) ; 

struct inode *FUNC20(struct inode *parent, umode_t mode)
{
	struct super_block *sb = parent->i_sb;
	struct inode *inode;
	struct jfs_inode_info *jfs_inode;
	int rc;

	inode = FUNC19(sb);
	if (!inode) {
		FUNC17("ialloc: new_inode returned NULL!");
		return FUNC0(-ENOMEM);
	}

	jfs_inode = FUNC1(inode);

	rc = FUNC7(parent, FUNC3(mode), inode);
	if (rc) {
		FUNC17("ialloc: diAlloc returned %d!", rc);
		goto fail_put;
	}

	if (FUNC13(inode) < 0) {
		rc = -EINVAL;
		goto fail_put;
	}

	FUNC12(inode, parent, mode);
	/*
	 * New inodes need to save sane values on disk when
	 * uid & gid mount options are used
	 */
	jfs_inode->saved_uid = inode->i_uid;
	jfs_inode->saved_gid = inode->i_gid;

	/*
	 * Allocate inode to quota.
	 */
	rc = FUNC11(inode);
	if (rc)
		goto fail_drop;
	rc = FUNC9(inode);
	if (rc)
		goto fail_drop;

	/* inherit flags from parent */
	jfs_inode->mode2 = FUNC1(parent)->mode2 & JFS_FL_INHERIT;

	if (FUNC3(mode)) {
		jfs_inode->mode2 |= IDIRECTORY;
		jfs_inode->mode2 &= ~JFS_DIRSYNC_FL;
	}
	else {
		jfs_inode->mode2 |= INLINEEA | ISPARSE;
		if (FUNC4(mode))
			jfs_inode->mode2 &= ~(JFS_IMMUTABLE_FL|JFS_APPEND_FL);
	}
	jfs_inode->mode2 |= inode->i_mode;

	inode->i_blocks = 0;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC6(inode);
	jfs_inode->otime = inode->i_ctime.tv_sec;
	inode->i_generation = FUNC2(sb)->gengen++;

	jfs_inode->cflag = 0;

	/* Zero remaining fields */
	FUNC18(&jfs_inode->acl, 0, sizeof(dxd_t));
	FUNC18(&jfs_inode->ea, 0, sizeof(dxd_t));
	jfs_inode->next_index = 0;
	jfs_inode->acltype = 0;
	jfs_inode->btorder = 0;
	jfs_inode->btindex = 0;
	jfs_inode->bxflag = 0;
	jfs_inode->blid = 0;
	jfs_inode->atlhead = 0;
	jfs_inode->atltail = 0;
	jfs_inode->xtlid = 0;
	FUNC16(inode);

	FUNC15("ialloc returns inode = 0x%p", inode);

	return inode;

fail_drop:
	FUNC10(inode);
	inode->i_flags |= S_NOQUOTA;
	FUNC5(inode);
	FUNC8(inode);
	return FUNC0(rc);

fail_put:
	FUNC14(inode);
	return FUNC0(rc);
}