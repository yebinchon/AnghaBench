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
struct inode {int dummy; } ;
struct f2fs_extent {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_NO_EXTENT ; 
 int FUNC1 (struct inode*,struct f2fs_extent*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

bool FUNC3(struct inode *inode, struct f2fs_extent *i_ext)
{
	bool ret =  FUNC1(inode, i_ext);

	if (!FUNC0(inode)->extent_tree)
		FUNC2(inode, FI_NO_EXTENT);

	return ret;
}