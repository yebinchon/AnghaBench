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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb_list; int /*<<< orphan*/  i_lock; scalar_t__ i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct inode *FUNC4(struct super_block *sb)
{
	struct inode *inode = FUNC1(sb);

	if (inode) {
		FUNC2(&inode->i_lock);
		inode->i_state = 0;
		FUNC3(&inode->i_lock);
		FUNC0(&inode->i_sb_list);
	}
	return inode;
}