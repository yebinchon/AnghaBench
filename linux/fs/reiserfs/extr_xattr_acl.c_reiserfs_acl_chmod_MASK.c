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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ STAT_DATA_V1 ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct inode *inode)
{
	if (FUNC0(inode))
		return 0;
	if (FUNC1(inode) == STAT_DATA_V1 ||
	    !FUNC3(inode->i_sb))
		return 0;

	return FUNC2(inode, inode->i_mode);
}