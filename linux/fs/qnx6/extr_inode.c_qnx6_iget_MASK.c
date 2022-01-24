#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int u32 ;
struct super_block {int /*<<< orphan*/  s_id; } ;
struct qnx6_sb_info {TYPE_1__* inodes; } ;
struct qnx6_inode_info {int /*<<< orphan*/  di_filelevels; int /*<<< orphan*/  di_block_ptr; } ;
struct qnx6_inode_entry {int /*<<< orphan*/  di_filelevels; int /*<<< orphan*/  di_block_ptr; int /*<<< orphan*/  di_ctime; int /*<<< orphan*/  di_atime; int /*<<< orphan*/  di_mtime; int /*<<< orphan*/  di_size; int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; int /*<<< orphan*/  di_mode; } ;
struct page {int dummy; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {int i_state; int i_size; int i_blocks; scalar_t__ i_mode; TYPE_5__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; TYPE_4__ i_ctime; TYPE_3__ i_atime; TYPE_2__ i_mtime; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_10__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_6__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (struct page*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int I_NEW ; 
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 struct qnx6_inode_info* FUNC3 (struct inode*) ; 
 unsigned int QNX6_INODE_SIZE_BITS ; 
 struct qnx6_sb_info* FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct qnx6_sb_info*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct qnx6_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct qnx6_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generic_ro_fops ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct inode* FUNC14 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC19 (struct page*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  qnx6_aops ; 
 int /*<<< orphan*/  qnx6_dir_inode_operations ; 
 int /*<<< orphan*/  qnx6_dir_operations ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 struct page* FUNC22 (struct address_space*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 

struct inode *FUNC24(struct super_block *sb, unsigned ino)
{
	struct qnx6_sb_info *sbi = FUNC4(sb);
	struct qnx6_inode_entry *raw_inode;
	struct inode *inode;
	struct qnx6_inode_info	*ei;
	struct address_space *mapping;
	struct page *page;
	u32 n, offs;

	inode = FUNC14(sb, ino);
	if (!inode)
		return FUNC1(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	ei = FUNC3(inode);

	inode->i_mode = 0;

	if (ino == 0) {
		FUNC20("bad inode number on dev %s: %u is out of range\n",
		       sb->s_id, ino);
		FUNC13(inode);
		return FUNC1(-EIO);
	}
	n = (ino - 1) >> (PAGE_SHIFT - QNX6_INODE_SIZE_BITS);
	offs = (ino - 1) & (~PAGE_MASK >> QNX6_INODE_SIZE_BITS);
	mapping = sbi->inodes->i_mapping;
	page = FUNC22(mapping, n, NULL);
	if (FUNC2(page)) {
		FUNC20("major problem: unable to read inode from dev %s\n",
		       sb->s_id);
		FUNC13(inode);
		return FUNC0(page);
	}
	FUNC17(page);
	raw_inode = ((struct qnx6_inode_entry *)FUNC19(page)) + offs;

	inode->i_mode    = FUNC8(sbi, raw_inode->di_mode);
	FUNC12(inode, (uid_t)FUNC9(sbi, raw_inode->di_uid));
	FUNC11(inode, (gid_t)FUNC9(sbi, raw_inode->di_gid));
	inode->i_size    = FUNC10(sbi, raw_inode->di_size);
	inode->i_mtime.tv_sec   = FUNC9(sbi, raw_inode->di_mtime);
	inode->i_mtime.tv_nsec = 0;
	inode->i_atime.tv_sec   = FUNC9(sbi, raw_inode->di_atime);
	inode->i_atime.tv_nsec = 0;
	inode->i_ctime.tv_sec   = FUNC9(sbi, raw_inode->di_ctime);
	inode->i_ctime.tv_nsec = 0;

	/* calc blocks based on 512 byte blocksize */
	inode->i_blocks = (inode->i_size + 511) >> 9;

	FUNC18(&ei->di_block_ptr, &raw_inode->di_block_ptr,
				sizeof(raw_inode->di_block_ptr));
	ei->di_filelevels = raw_inode->di_filelevels;

	if (FUNC7(inode->i_mode)) {
		inode->i_fop = &generic_ro_fops;
		inode->i_mapping->a_ops = &qnx6_aops;
	} else if (FUNC5(inode->i_mode)) {
		inode->i_op = &qnx6_dir_inode_operations;
		inode->i_fop = &qnx6_dir_operations;
		inode->i_mapping->a_ops = &qnx6_aops;
	} else if (FUNC6(inode->i_mode)) {
		inode->i_op = &page_symlink_inode_operations;
		FUNC16(inode);
		inode->i_mapping->a_ops = &qnx6_aops;
	} else
		FUNC15(inode, inode->i_mode, 0);
	FUNC21(page);
	FUNC23(inode);
	return inode;
}