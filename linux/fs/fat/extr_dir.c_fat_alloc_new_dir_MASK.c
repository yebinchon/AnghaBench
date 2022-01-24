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
typedef  scalar_t__ u8 ;
struct timespec64 {int dummy; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct TYPE_3__ {scalar_t__ isvfat; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct msdos_dir_entry {scalar_t__ size; void* cdate; void* adate; scalar_t__ ctime_cs; void* ctime; void* date; void* time; scalar_t__ lcase; int /*<<< orphan*/  attr; int /*<<< orphan*/  name; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  void* __le16 ;
struct TYPE_4__ {int i_logstart; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DIR ; 
 int ENOMEM ; 
 int MAX_BUF_PER_PAGE ; 
 int /*<<< orphan*/  MSDOS_DOT ; 
 int /*<<< orphan*/  MSDOS_DOTDOT ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MSDOS_NAME ; 
 struct msdos_sb_info* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct inode*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msdos_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msdos_dir_entry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct msdos_sb_info*,struct timespec64*,void**,void**,scalar_t__*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,int,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct msdos_dir_entry*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct buffer_head* FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 

int FUNC15(struct inode *dir, struct timespec64 *ts)
{
	struct super_block *sb = dir->i_sb;
	struct msdos_sb_info *sbi = FUNC1(sb);
	struct buffer_head *bhs[MAX_BUF_PER_PAGE];
	struct msdos_dir_entry *de;
	sector_t blknr;
	__le16 date, time;
	u8 time_cs;
	int err, cluster;

	err = FUNC2(dir, &cluster, 1);
	if (err)
		goto error;

	blknr = FUNC3(sbi, cluster);
	bhs[0] = FUNC12(sb, blknr);
	if (!bhs[0]) {
		err = -ENOMEM;
		goto error_free;
	}

	FUNC6(sbi, ts, &time, &date, &time_cs);

	de = (struct msdos_dir_entry *)bhs[0]->b_data;
	/* Avoid race with userspace read via bdev */
	FUNC8(bhs[0]);
	/* filling the new directory slots ("." and ".." entries) */
	FUNC10(de[0].name, MSDOS_DOT, MSDOS_NAME);
	FUNC10(de[1].name, MSDOS_DOTDOT, MSDOS_NAME);
	de->attr = de[1].attr = ATTR_DIR;
	de[0].lcase = de[1].lcase = 0;
	de[0].time = de[1].time = time;
	de[0].date = de[1].date = date;
	if (sbi->options.isvfat) {
		/* extra timestamps */
		de[0].ctime = de[1].ctime = time;
		de[0].ctime_cs = de[1].ctime_cs = time_cs;
		de[0].adate = de[0].cdate = de[1].adate = de[1].cdate = date;
	} else {
		de[0].ctime = de[1].ctime = 0;
		de[0].ctime_cs = de[1].ctime_cs = 0;
		de[0].adate = de[0].cdate = de[1].adate = de[1].cdate = 0;
	}
	FUNC5(&de[0], cluster);
	FUNC5(&de[1], FUNC0(dir)->i_logstart);
	de[0].size = de[1].size = 0;
	FUNC11(de + 2, 0, sb->s_blocksize - 2 * sizeof(*de));
	FUNC13(bhs[0]);
	FUNC14(bhs[0]);
	FUNC9(bhs[0], dir);

	err = FUNC7(dir, blknr, 1, bhs, MAX_BUF_PER_PAGE);
	if (err)
		goto error_free;

	return cluster;

error_free:
	FUNC4(dir, cluster);
error:
	return err;
}