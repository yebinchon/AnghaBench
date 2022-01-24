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
struct inode {scalar_t__ i_ino; int i_state; TYPE_1__* i_sb; int /*<<< orphan*/  i_writecount; } ;
struct file {int dummy; } ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_2__ {scalar_t__ s_dev; } ;

/* Variables and functions */
 int I_DIRTY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct inode *inode = FUNC2(file);
	static ino_t last_ino;
	static dev_t last_dev;
	int err = 0;

	if (FUNC0(&inode->i_writecount) > 1
	    || (last_ino == inode->i_ino && last_dev == inode->i_sb->s_dev)) {
		FUNC1("nfsd: write defer %d\n", FUNC4(current));
		FUNC3(10);
		FUNC1("nfsd: write resume %d\n", FUNC4(current));
	}

	if (inode->i_state & I_DIRTY) {
		FUNC1("nfsd: write sync %d\n", FUNC4(current));
		err = FUNC5(file, 0);
	}
	last_ino = inode->i_ino;
	last_dev = inode->i_sb->s_dev;
	return err;
}