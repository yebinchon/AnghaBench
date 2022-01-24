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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,struct dentry*,int) ; 
 int FUNC1 (struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct dentry *old_dentry, struct inode *dir,
			      struct dentry *new_dentry)
{
	int err = FUNC1(old_dentry, dir, new_dentry, NULL);

	FUNC0("link(%pd2, %pd2) = %i\n", old_dentry, new_dentry, err);
	return err;
}