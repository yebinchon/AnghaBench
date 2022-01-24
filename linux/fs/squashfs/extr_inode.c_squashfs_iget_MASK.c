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
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,unsigned int) ; 
 int FUNC4 (struct inode*,long long) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

struct inode *FUNC6(struct super_block *sb, long long ino,
				unsigned int ino_number)
{
	struct inode *inode = FUNC3(sb, ino_number);
	int err;

	FUNC1("Entered squashfs_iget\n");

	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	err = FUNC4(inode, ino);
	if (err) {
		FUNC2(inode);
		return FUNC0(err);
	}

	FUNC5(inode);
	return inode;
}