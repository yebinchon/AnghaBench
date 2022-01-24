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
struct super_block {int s_blocksize_bits; } ;
struct kernel_lb_addr {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  extLength; int /*<<< orphan*/  extLocation; } ;
struct TYPE_3__ {int /*<<< orphan*/  extLength; int /*<<< orphan*/  extLocation; } ;
struct anchorVolDescPtr {TYPE_2__ reserveVolDescSeqExt; TYPE_1__ mainVolDescSeqExt; } ;
typedef  int sector_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct super_block*,int,int,struct kernel_lb_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, struct buffer_head *bh,
			     struct kernel_lb_addr *fileset)
{
	struct anchorVolDescPtr *anchor;
	sector_t main_s, main_e, reserve_s, reserve_e;
	int ret;

	anchor = (struct anchorVolDescPtr *)bh->b_data;

	/* Locate the main sequence */
	main_s = FUNC0(anchor->mainVolDescSeqExt.extLocation);
	main_e = FUNC0(anchor->mainVolDescSeqExt.extLength);
	main_e = main_e >> sb->s_blocksize_bits;
	main_e += main_s - 1;

	/* Locate the reserve sequence */
	reserve_s = FUNC0(anchor->reserveVolDescSeqExt.extLocation);
	reserve_e = FUNC0(anchor->reserveVolDescSeqExt.extLength);
	reserve_e = reserve_e >> sb->s_blocksize_bits;
	reserve_e += reserve_s - 1;

	/* Process the main & reserve sequences */
	/* responsible for finding the PartitionDesc(s) */
	ret = FUNC1(sb, main_s, main_e, fileset);
	if (ret != -EAGAIN)
		return ret;
	FUNC2(sb);
	ret = FUNC1(sb, reserve_s, reserve_e, fileset);
	if (ret < 0) {
		FUNC2(sb);
		/* No sequence was OK, return -EIO */
		if (ret == -EAGAIN)
			ret = -EIO;
	}
	return ret;
}