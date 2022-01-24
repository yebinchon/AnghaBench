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
struct msdos_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  MSDOS_ROOT_INO ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct msdos_dir_entry*) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct super_block*) ; 

struct inode *FUNC12(struct super_block *sb,
			struct msdos_dir_entry *de, loff_t i_pos)
{
	struct inode *inode;
	int err;

	FUNC5(FUNC1(sb));
	inode = FUNC4(sb, i_pos);
	if (inode)
		goto out;
	inode = FUNC11(sb);
	if (!inode) {
		inode = FUNC0(-ENOMEM);
		goto out;
	}
	inode->i_ino = FUNC10(sb, MSDOS_ROOT_INO);
	FUNC7(inode, 1);
	err = FUNC3(inode, de);
	if (err) {
		FUNC9(inode);
		inode = FUNC0(err);
		goto out;
	}
	FUNC2(inode, i_pos);
	FUNC8(inode);
out:
	FUNC6(FUNC1(sb));
	return inode;
}