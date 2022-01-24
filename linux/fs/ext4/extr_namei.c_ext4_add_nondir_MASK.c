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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static int FUNC6(handle_t *handle,
		struct dentry *dentry, struct inode *inode)
{
	int err = FUNC2(handle, dentry, inode);
	if (!err) {
		FUNC3(handle, inode);
		FUNC0(dentry, inode);
		return 0;
	}
	FUNC1(inode);
	FUNC5(inode);
	FUNC4(inode);
	return err;
}