#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_nlink; struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ i_start; } ;
struct TYPE_3__ {scalar_t__ root_cluster; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*) ; 

__attribute__((used)) static int FUNC3(struct inode *dir)
{
	struct super_block *sb = dir->i_sb;

	if (dir->i_nlink < 2) {
		/* Directory should have "."/".." entries at least. */
		FUNC2(sb, "corrupted directory (invalid entries)");
		return -EIO;
	}
	if (FUNC0(dir)->i_start == 0 ||
	    FUNC0(dir)->i_start == FUNC1(sb)->root_cluster) {
		/* Directory should point valid cluster. */
		FUNC2(sb, "corrupted directory (invalid i_start)");
		return -EIO;
	}
	return 0;
}