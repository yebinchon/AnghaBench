#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EFBIG ; 
 int FUNC0 (struct inode*,int,int) ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, loff_t newsize, loff_t size)
{
	int ret;

	/* assume a truncate from zero size is going to be for the purposes of
	 * shared mmap */
	if (size == 0) {
		if (FUNC3(newsize >> 32))
			return -EFBIG;

		return FUNC1(inode, newsize);
	}

	/* check that a decrease in size doesn't cut off any shared mappings */
	if (newsize < size) {
		ret = FUNC0(inode, size, newsize);
		if (ret < 0)
			return ret;
	}

	FUNC2(inode, newsize);
	return 0;
}