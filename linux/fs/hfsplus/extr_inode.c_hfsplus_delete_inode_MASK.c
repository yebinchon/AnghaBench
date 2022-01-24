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
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_nlink; struct super_block* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  file_count; int /*<<< orphan*/  folder_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

void FUNC6(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;

	if (FUNC1(inode->i_mode)) {
		FUNC0(sb)->folder_count--;
		FUNC5(sb);
		return;
	}
	FUNC0(sb)->file_count--;
	if (FUNC3(inode->i_mode)) {
		if (!inode->i_nlink) {
			inode->i_size = 0;
			FUNC4(inode);
		}
	} else if (FUNC2(inode->i_mode)) {
		inode->i_size = 0;
		FUNC4(inode);
	}
	FUNC5(sb);
}