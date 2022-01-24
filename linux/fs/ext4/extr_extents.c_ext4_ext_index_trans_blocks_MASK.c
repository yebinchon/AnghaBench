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

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 

int FUNC2(struct inode *inode, int extents)
{
	int index;
	int depth;

	/* If we are converting the inline data, only one is needed here. */
	if (FUNC0(inode))
		return 1;

	depth = FUNC1(inode);

	if (extents <= 1)
		index = depth * 2;
	else
		index = depth * 3;

	return index;
}