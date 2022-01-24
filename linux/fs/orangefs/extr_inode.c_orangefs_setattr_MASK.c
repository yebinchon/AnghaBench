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
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_INODE_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ,struct iattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct dentry *dentry, struct iattr *iattr)
{
	int ret;
	FUNC2(GOSSIP_INODE_DEBUG, "__orangefs_setattr: called on %pd\n",
	    dentry);
	ret = FUNC3(dentry, iattr);
	if (ret)
	        goto out;
	ret = FUNC0(FUNC1(dentry), iattr);
	FUNC4(FUNC1(dentry), 1);
out:
	FUNC2(GOSSIP_INODE_DEBUG, "orangefs_setattr: returning %d\n",
	    ret);
	return ret;
}