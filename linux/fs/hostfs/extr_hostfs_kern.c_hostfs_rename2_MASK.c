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
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int RENAME_EXCHANGE ; 
 unsigned int RENAME_NOREPLACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct dentry*) ; 
 int FUNC2 (char*,char*,unsigned int) ; 
 int FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(struct inode *old_dir, struct dentry *old_dentry,
			  struct inode *new_dir, struct dentry *new_dentry,
			  unsigned int flags)
{
	char *old_name, *new_name;
	int err;

	if (flags & ~(RENAME_NOREPLACE | RENAME_EXCHANGE))
		return -EINVAL;

	old_name = FUNC1(old_dentry);
	if (old_name == NULL)
		return -ENOMEM;
	new_name = FUNC1(new_dentry);
	if (new_name == NULL) {
		FUNC0(old_name);
		return -ENOMEM;
	}
	if (!flags)
		err = FUNC3(old_name, new_name);
	else
		err = FUNC2(old_name, new_name, flags);

	FUNC0(old_name);
	FUNC0(new_name);
	return err;
}