#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u8 ;
struct sysv_sb_info {unsigned int s_ninodes; } ;
struct sysv_inode_info {int /*<<< orphan*/ * i_data; scalar_t__ i_dir_start_lookup; } ;
struct sysv_inode {int /*<<< orphan*/ * i_data; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct super_block {int /*<<< orphan*/  s_id; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {int i_state; scalar_t__ i_mode; scalar_t__ i_blocks; TYPE_4__ i_mtime; TYPE_3__ i_atime; TYPE_2__ i_ctime; void* i_size; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_5__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int I_NEW ; 
 struct sysv_inode_info* FUNC1 (struct inode*) ; 
 struct sysv_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct inode* FUNC11 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (struct sysv_sb_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__) ; 
 struct sysv_inode* FUNC16 (struct super_block*,unsigned int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 

struct inode *FUNC19(struct super_block *sb, unsigned int ino)
{
	struct sysv_sb_info * sbi = FUNC2(sb);
	struct buffer_head * bh;
	struct sysv_inode * raw_inode;
	struct sysv_inode_info * si;
	struct inode *inode;
	unsigned int block;

	if (!ino || ino > sbi->s_ninodes) {
		FUNC13("Bad inode number on dev %s: %d is out of range\n",
		       sb->s_id, ino);
		return FUNC0(-EIO);
	}

	inode = FUNC11(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	raw_inode = FUNC16(sb, ino, &bh);
	if (!raw_inode) {
		FUNC13("Major problem: unable to read inode from dev %s\n",
		       inode->i_sb->s_id);
		goto bad_inode;
	}
	/* SystemV FS: kludge permissions if ino==SYSV_ROOT_INO ?? */
	inode->i_mode = FUNC6(sbi, raw_inode->i_mode);
	FUNC9(inode, (uid_t)FUNC6(sbi, raw_inode->i_uid));
	FUNC8(inode, (gid_t)FUNC6(sbi, raw_inode->i_gid));
	FUNC15(inode, FUNC6(sbi, raw_inode->i_nlink));
	inode->i_size = FUNC7(sbi, raw_inode->i_size);
	inode->i_atime.tv_sec = FUNC7(sbi, raw_inode->i_atime);
	inode->i_mtime.tv_sec = FUNC7(sbi, raw_inode->i_mtime);
	inode->i_ctime.tv_sec = FUNC7(sbi, raw_inode->i_ctime);
	inode->i_ctime.tv_nsec = 0;
	inode->i_atime.tv_nsec = 0;
	inode->i_mtime.tv_nsec = 0;
	inode->i_blocks = 0;

	si = FUNC1(inode);
	for (block = 0; block < 10+1+1+1; block++)
		FUNC14(sbi, &raw_inode->i_data[3*block],
				(u8 *)&si->i_data[block]);
	FUNC5(bh);
	si->i_dir_start_lookup = 0;
	if (FUNC4(inode->i_mode) || FUNC3(inode->i_mode))
		FUNC17(inode,
			       FUNC12(FUNC7(sbi, si->i_data[0])));
	else
		FUNC17(inode, 0);
	FUNC18(inode);
	return inode;

bad_inode:
	FUNC10(inode);
	return FUNC0(-EIO);
}