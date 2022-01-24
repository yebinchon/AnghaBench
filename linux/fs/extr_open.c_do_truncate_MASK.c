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
struct iattr {unsigned int ia_valid; struct file* ia_file; scalar_t__ ia_size; } ;
struct file {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 unsigned int ATTR_FILE ; 
 int ATTR_FORCE ; 
 unsigned int ATTR_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dentry*,struct iattr*,int /*<<< orphan*/ *) ; 

int FUNC4(struct dentry *dentry, loff_t length, unsigned int time_attrs,
	struct file *filp)
{
	int ret;
	struct iattr newattrs;

	/* Not pretty: "inode->i_size" shouldn't really be signed. But it is. */
	if (length < 0)
		return -EINVAL;

	newattrs.ia_size = length;
	newattrs.ia_valid = ATTR_SIZE | time_attrs;
	if (filp) {
		newattrs.ia_file = filp;
		newattrs.ia_valid |= ATTR_FILE;
	}

	/* Remove suid, sgid, and file capabilities on truncate too */
	ret = FUNC0(dentry);
	if (ret < 0)
		return ret;
	if (ret)
		newattrs.ia_valid |= ret | ATTR_FORCE;

	FUNC1(dentry->d_inode);
	/* Note any delegations or leases have already been broken: */
	ret = FUNC3(dentry, &newattrs, NULL);
	FUNC2(dentry->d_inode);
	return ret;
}