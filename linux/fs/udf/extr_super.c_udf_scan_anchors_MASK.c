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
struct udf_sb_info {int s_anchor; int s_session; } ;
struct super_block {int s_blocksize_bits; TYPE_1__* s_bdev; } ;
struct kernel_lb_addr {int dummy; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*,int,struct kernel_lb_addr*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, sector_t *lastblock,
			    struct kernel_lb_addr *fileset)
{
	sector_t last[6];
	int i;
	struct udf_sb_info *sbi = FUNC0(sb);
	int last_count = 0;
	int ret;

	/* First try user provided anchor */
	if (sbi->s_anchor) {
		ret = FUNC2(sb, sbi->s_anchor, fileset);
		if (ret != -EAGAIN)
			return ret;
	}
	/*
	 * according to spec, anchor is in either:
	 *     block 256
	 *     lastblock-256
	 *     lastblock
	 *  however, if the disc isn't closed, it could be 512.
	 */
	ret = FUNC2(sb, sbi->s_session + 256, fileset);
	if (ret != -EAGAIN)
		return ret;
	/*
	 * The trouble is which block is the last one. Drives often misreport
	 * this so we try various possibilities.
	 */
	last[last_count++] = *lastblock;
	if (*lastblock >= 1)
		last[last_count++] = *lastblock - 1;
	last[last_count++] = *lastblock + 1;
	if (*lastblock >= 2)
		last[last_count++] = *lastblock - 2;
	if (*lastblock >= 150)
		last[last_count++] = *lastblock - 150;
	if (*lastblock >= 152)
		last[last_count++] = *lastblock - 152;

	for (i = 0; i < last_count; i++) {
		if (last[i] >= FUNC1(sb->s_bdev->bd_inode) >>
				sb->s_blocksize_bits)
			continue;
		ret = FUNC2(sb, last[i], fileset);
		if (ret != -EAGAIN) {
			if (!ret)
				*lastblock = last[i];
			return ret;
		}
		if (last[i] < 256)
			continue;
		ret = FUNC2(sb, last[i] - 256, fileset);
		if (ret != -EAGAIN) {
			if (!ret)
				*lastblock = last[i];
			return ret;
		}
	}

	/* Finally try block 512 in case media is open */
	return FUNC2(sb, sbi->s_session + 512, fileset);
}