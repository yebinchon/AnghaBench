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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WHITEOUT_DEV ; 
 int FUNC1 (struct dentry*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, struct dentry *dentry, umode_t mode,
		     dev_t rdev)
{
	/* Don't allow creation of "whiteout" on overlay */
	if (FUNC0(mode) && rdev == WHITEOUT_DEV)
		return -EPERM;

	return FUNC1(dentry, mode, rdev, NULL);
}