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
typedef  unsigned long u64 ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int FUNC0 (struct inode*,unsigned long*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 unsigned long FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct inode *inode, u64 nused, u64 *nmaxp)
{
	unsigned long desc_blocks = 0;
	u64 entries_per_desc_block, nmax;
	int err;

	err = FUNC0(inode, &desc_blocks);
	if (FUNC4(err))
		return err;

	entries_per_desc_block = (u64)FUNC1(inode) *
				FUNC2(inode);
	nmax = entries_per_desc_block * desc_blocks;

	if (nused == nmax &&
			FUNC3(inode, desc_blocks))
		nmax += entries_per_desc_block;

	if (nused > nmax)
		return -ERANGE;

	*nmaxp = nmax;
	return 0;
}