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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ELOOP ; 
 int FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct super_block*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, struct dentry *dir,
			  struct inode **ptrap, const char *name)
{
	struct inode *trap;
	int err;

	trap = FUNC1(sb, dir);
	err = FUNC0(trap);
	if (err) {
		if (err == -ELOOP)
			FUNC2("overlayfs: conflicting %s path\n", name);
		return err;
	}

	*ptrap = trap;
	return 0;
}