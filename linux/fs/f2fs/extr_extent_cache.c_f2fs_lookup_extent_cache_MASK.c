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
struct extent_info {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,struct extent_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

bool FUNC2(struct inode *inode, pgoff_t pgofs,
					struct extent_info *ei)
{
	if (!FUNC1(inode))
		return false;

	return FUNC0(inode, pgofs, ei);
}