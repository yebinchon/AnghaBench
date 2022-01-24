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
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, u64 range_start,
				   u64 range_end, struct buffer_head *di_bh)
{
	int rc = 0;
	u64 next_pos;
	u64 zero_pos = range_start;

	FUNC5(
			(unsigned long long)FUNC1(inode)->ip_blkno,
			(unsigned long long)range_start,
			(unsigned long long)range_end);
	FUNC0(range_start >= range_end);

	while (zero_pos < range_end) {
		next_pos = (zero_pos & PAGE_MASK) + PAGE_SIZE;
		if (next_pos > range_end)
			next_pos = range_end;
		rc = FUNC4(inode, zero_pos, next_pos, di_bh);
		if (rc < 0) {
			FUNC3(rc);
			break;
		}
		zero_pos = next_pos;

		/*
		 * Very large extends have the potential to lock up
		 * the cpu for extended periods of time.
		 */
		FUNC2();
	}

	return rc;
}