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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int /*<<< orphan*/  f_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	FUNC1(inode->i_sb);
	FUNC0(inode, &filp->f_pos);
	/*hpfs_write_if_changed(inode);*/
	FUNC2(inode->i_sb);
	return 0;
}