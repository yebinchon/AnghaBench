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
struct inode {scalar_t__ i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int FUNC1 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry, struct iattr *ia)
{
	struct inode *inode = FUNC0(dentry);
	unsigned int old_ia_valid = ia->ia_valid;
	int ret = 0;

	/* POSIX UID/GID verification for setting inode attributes */
	ret = FUNC3(dentry, ia);
	if (ret)
		return ret;

	/* pick out size-changing events */
	if (ia->ia_valid & ATTR_SIZE) {
		loff_t size = inode->i_size;

		if (ia->ia_size != size) {
			ret = FUNC1(inode, ia->ia_size, size);
			if (ret < 0 || ia->ia_valid == ATTR_SIZE)
				goto out;
		} else {
			/* we skipped the truncate but must still update
			 * timestamps
			 */
			ia->ia_valid |= ATTR_MTIME|ATTR_CTIME;
		}
	}

	FUNC2(inode, ia);
 out:
	ia->ia_valid = old_ia_valid;
	return ret;
}