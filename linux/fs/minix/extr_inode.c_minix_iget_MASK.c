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
struct inode {int i_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int I_NEW ; 
 scalar_t__ MINIX_V1 ; 
 struct inode* FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,unsigned long) ; 

struct inode *FUNC5(struct super_block *sb, unsigned long ino)
{
	struct inode *inode;

	inode = FUNC4(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	if (FUNC1(inode) == MINIX_V1)
		return FUNC2(inode);
	else
		return FUNC3(inode);
}