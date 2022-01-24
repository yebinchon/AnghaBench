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
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FI_VERITY_IN_PROGRESS ; 
 int FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *filp)
{
	struct inode *inode = FUNC5(filp);
	int err;

	if (FUNC4(inode))
		return -EBUSY;

	if (FUNC2(inode) || FUNC3(inode))
		return -EOPNOTSUPP;

	/*
	 * Since the file was opened readonly, we have to initialize the quotas
	 * here and not rely on ->open() doing it.  This must be done before
	 * evicting the inline data.
	 */
	err = FUNC0(inode);
	if (err)
		return err;

	err = FUNC1(inode);
	if (err)
		return err;

	FUNC6(inode, FI_VERITY_IN_PROGRESS);
	return 0;
}