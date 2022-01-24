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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
typedef  enum integrity_status { ____Placeholder_integrity_status } integrity_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 scalar_t__ evm_fixmode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum integrity_status FUNC4(struct dentry *dentry)
{
	struct inode *inode = FUNC1(dentry);

	if (!FUNC2() || !FUNC0(inode->i_mode) || evm_fixmode)
		return 0;
	return FUNC3(dentry, NULL, NULL, 0, NULL);
}