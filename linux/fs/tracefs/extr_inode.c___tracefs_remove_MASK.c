#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int i_mode; } ;

/* Variables and functions */
#define  S_IFDIR 128 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int FUNC6 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct dentry *parent)
{
	int ret = 0;

	if (FUNC5(dentry)) {
		if (dentry->d_inode) {
			FUNC1(dentry);
			switch (dentry->d_inode->i_mode & S_IFMT) {
			case S_IFDIR:
				ret = FUNC6(parent->d_inode, dentry);
				if (!ret)
					FUNC3(parent->d_inode, dentry);
				break;
			default:
				FUNC7(parent->d_inode, dentry);
				FUNC4(parent->d_inode, dentry);
				break;
			}
			if (!ret)
				FUNC0(dentry);
			FUNC2(dentry);
		}
	}
	return ret;
}