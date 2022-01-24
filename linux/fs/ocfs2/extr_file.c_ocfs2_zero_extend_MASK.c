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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct super_block*,scalar_t__) ; 
 int FUNC4 (struct inode*,struct buffer_head*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long,unsigned long long,unsigned long long) ; 

int FUNC7(struct inode *inode, struct buffer_head *di_bh,
		      loff_t zero_to_size)
{
	int ret = 0;
	u64 zero_start, range_start = 0, range_end = 0;
	struct super_block *sb = inode->i_sb;

	zero_start = FUNC3(sb, FUNC1(inode));
	FUNC6((unsigned long long)FUNC0(inode)->ip_blkno,
				(unsigned long long)zero_start,
				(unsigned long long)FUNC1(inode));
	while (zero_start < zero_to_size) {
		ret = FUNC4(inode, di_bh, zero_start,
						  zero_to_size,
						  &range_start,
						  &range_end);
		if (ret) {
			FUNC2(ret);
			break;
		}
		if (!range_end)
			break;
		/* Trim the ends */
		if (range_start < zero_start)
			range_start = zero_start;
		if (range_end > zero_to_size)
			range_end = zero_to_size;

		ret = FUNC5(inode, range_start,
					      range_end, di_bh);
		if (ret) {
			FUNC2(ret);
			break;
		}
		zero_start = range_end;
	}

	return ret;
}