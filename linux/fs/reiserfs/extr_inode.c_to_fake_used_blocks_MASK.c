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
typedef  scalar_t__ ulong ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*,int) ; 

__attribute__((used)) static inline ulong FUNC4(struct inode *inode, int sd_size)
{
	loff_t bytes = FUNC2(inode);
	loff_t real_space = FUNC3(inode, sd_size);

	/* keeps fsck and non-quota versions of reiserfs happy */
	if (FUNC1(inode->i_mode) || FUNC0(inode->i_mode)) {
		bytes += (loff_t) 511;
	}

	/*
	 * files from before the quota patch might i_blocks such that
	 * bytes < real_space.  Deal with that here to prevent it from
	 * going negative.
	 */
	if (bytes < real_space)
		return 0;
	return (bytes - real_space) >> 9;
}