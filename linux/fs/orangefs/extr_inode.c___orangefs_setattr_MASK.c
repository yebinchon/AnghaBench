#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_lock; } ;
struct iattr {int ia_valid; int ia_mode; } ;
struct TYPE_2__ {int attr_valid; int /*<<< orphan*/  attr_gid; int /*<<< orphan*/  attr_uid; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  GOSSIP_UTILS_DEBUG ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct iattr*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 

int FUNC14(struct inode *inode, struct iattr *iattr)
{
	int ret;

	if (iattr->ia_valid & ATTR_MODE) {
		if (iattr->ia_mode & (S_ISVTX)) {
			if (FUNC5(inode)) {
				/*
				 * allow sticky bit to be set on root (since
				 * it shows up that way by default anyhow),
				 * but don't show it to the server
				 */
				iattr->ia_mode -= S_ISVTX;
			} else {
				FUNC4(GOSSIP_UTILS_DEBUG,
					     "User attempted to set sticky bit on non-root directory; returning EINVAL.\n");
				ret = -EINVAL;
				goto out;
			}
		}
		if (iattr->ia_mode & (S_ISUID)) {
			FUNC4(GOSSIP_UTILS_DEBUG,
				     "Attempting to set setuid bit (not supported); returning EINVAL.\n");
			ret = -EINVAL;
			goto out;
		}
	}

	if (iattr->ia_valid & ATTR_SIZE) {
		ret = FUNC7(inode, iattr);
		if (ret)
			goto out;
	}

again:
	FUNC10(&inode->i_lock);
	if (FUNC0(inode)->attr_valid) {
		if (FUNC12(FUNC0(inode)->attr_uid, FUNC2()) &&
		    FUNC3(FUNC0(inode)->attr_gid, FUNC1())) {
			FUNC0(inode)->attr_valid = iattr->ia_valid;
		} else {
			FUNC11(&inode->i_lock);
			FUNC13(inode, 1);
			goto again;
		}
	} else {
		FUNC0(inode)->attr_valid = iattr->ia_valid;
		FUNC0(inode)->attr_uid = FUNC2();
		FUNC0(inode)->attr_gid = FUNC1();
	}
	FUNC9(inode, iattr);
	FUNC11(&inode->i_lock);
	FUNC6(inode);

	if (iattr->ia_valid & ATTR_MODE)
		/* change mod on a file that has ACLs */
		ret = FUNC8(inode, inode->i_mode);

	ret = 0;
out:
	return ret;
}