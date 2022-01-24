#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct jfs_sb_info {int umask; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct jfs_inode_info {int fileset; int mode2; int next_index; int otime; int acltype; int dev; scalar_t__ xtlid; scalar_t__ atltail; scalar_t__ atlhead; scalar_t__ blid; scalar_t__ bxflag; scalar_t__ btorder; scalar_t__ btindex; scalar_t__ cflag; int /*<<< orphan*/  i_inline_ea; int /*<<< orphan*/  i_xtroot; int /*<<< orphan*/  i_dirtable; int /*<<< orphan*/  ea; int /*<<< orphan*/  acl; int /*<<< orphan*/  ixpxd; int /*<<< orphan*/  saved_gid; int /*<<< orphan*/  saved_uid; } ;
struct TYPE_12__ {int tv_sec; int tv_nsec; } ;
struct TYPE_10__ {int tv_sec; int tv_nsec; } ;
struct TYPE_8__ {int tv_sec; int tv_nsec; } ;
struct inode {int i_mode; int i_generation; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_blocks; TYPE_5__ i_ctime; TYPE_3__ i_mtime; TYPE_1__ i_atime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct TYPE_14__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_13__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_11__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct dinode {int /*<<< orphan*/  di_inlineea; int /*<<< orphan*/  di_xtroot; int /*<<< orphan*/  di_dirtable; int /*<<< orphan*/  di_rdev; int /*<<< orphan*/  di_acltype; TYPE_7__ di_otime; int /*<<< orphan*/  di_next_index; int /*<<< orphan*/  di_ea; int /*<<< orphan*/  di_acl; int /*<<< orphan*/  di_ixpxd; int /*<<< orphan*/  di_gen; int /*<<< orphan*/  di_nblocks; TYPE_6__ di_ctime; TYPE_4__ di_mtime; TYPE_2__ di_atime; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; int /*<<< orphan*/  di_nlink; int /*<<< orphan*/  di_mode; int /*<<< orphan*/  di_fileset; } ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 struct jfs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct dinode * dip, struct inode *ip)
{
	struct jfs_inode_info *jfs_ip = FUNC0(ip);
	struct jfs_sb_info *sbi = FUNC1(ip->i_sb);

	jfs_ip->fileset = FUNC10(dip->di_fileset);
	jfs_ip->mode2 = FUNC10(dip->di_mode);
	FUNC9(ip);

	ip->i_mode = FUNC10(dip->di_mode) & 0xffff;
	if (sbi->umask != -1) {
		ip->i_mode = (ip->i_mode & ~0777) | (0777 & ~sbi->umask);
		/* For directories, add x permission if r is allowed by umask */
		if (FUNC5(ip->i_mode)) {
			if (ip->i_mode & 0400)
				ip->i_mode |= 0100;
			if (ip->i_mode & 0040)
				ip->i_mode |= 0010;
			if (ip->i_mode & 0004)
				ip->i_mode |= 0001;
		}
	}
	FUNC16(ip, FUNC10(dip->di_nlink));

	jfs_ip->saved_uid = FUNC13(&init_user_ns, FUNC10(dip->di_uid));
	if (!FUNC17(sbi->uid))
		ip->i_uid = jfs_ip->saved_uid;
	else {
		ip->i_uid = sbi->uid;
	}

	jfs_ip->saved_gid = FUNC12(&init_user_ns, FUNC10(dip->di_gid));
	if (!FUNC8(sbi->gid))
		ip->i_gid = jfs_ip->saved_gid;
	else {
		ip->i_gid = sbi->gid;
	}

	ip->i_size = FUNC11(dip->di_size);
	ip->i_atime.tv_sec = FUNC10(dip->di_atime.tv_sec);
	ip->i_atime.tv_nsec = FUNC10(dip->di_atime.tv_nsec);
	ip->i_mtime.tv_sec = FUNC10(dip->di_mtime.tv_sec);
	ip->i_mtime.tv_nsec = FUNC10(dip->di_mtime.tv_nsec);
	ip->i_ctime.tv_sec = FUNC10(dip->di_ctime.tv_sec);
	ip->i_ctime.tv_nsec = FUNC10(dip->di_ctime.tv_nsec);
	ip->i_blocks = FUNC2(ip->i_sb, FUNC11(dip->di_nblocks));
	ip->i_generation = FUNC10(dip->di_gen);

	jfs_ip->ixpxd = dip->di_ixpxd;	/* in-memory pxd's are little-endian */
	jfs_ip->acl = dip->di_acl;	/* as are dxd's */
	jfs_ip->ea = dip->di_ea;
	jfs_ip->next_index = FUNC10(dip->di_next_index);
	jfs_ip->otime = FUNC10(dip->di_otime.tv_sec);
	jfs_ip->acltype = FUNC10(dip->di_acltype);

	if (FUNC4(ip->i_mode) || FUNC3(ip->i_mode)) {
		jfs_ip->dev = FUNC10(dip->di_rdev);
		ip->i_rdev = FUNC15(jfs_ip->dev);
	}

	if (FUNC5(ip->i_mode)) {
		FUNC14(&jfs_ip->i_dirtable, &dip->di_dirtable, 384);
	} else if (FUNC7(ip->i_mode) || FUNC6(ip->i_mode)) {
		FUNC14(&jfs_ip->i_xtroot, &dip->di_xtroot, 288);
	} else
		FUNC14(&jfs_ip->i_inline_ea, &dip->di_inlineea, 128);

	/* Zero the in-memory-only stuff */
	jfs_ip->cflag = 0;
	jfs_ip->btindex = 0;
	jfs_ip->btorder = 0;
	jfs_ip->bxflag = 0;
	jfs_ip->blid = 0;
	jfs_ip->atlhead = 0;
	jfs_ip->atltail = 0;
	jfs_ip->xtlid = 0;
	return (0);
}