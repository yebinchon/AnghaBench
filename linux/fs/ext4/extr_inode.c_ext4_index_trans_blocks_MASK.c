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
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int FUNC0 (struct inode*,int) ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, int lblocks,
				   int pextents)
{
	if (!(FUNC2(inode, EXT4_INODE_EXTENTS)))
		return FUNC1(inode, lblocks);
	return FUNC0(inode, pextents);
}