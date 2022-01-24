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
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_XATTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int XATTR_CREATE ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct super_block*,int*) ; 
 int FUNC6 (struct inode*,size_t,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,int,char const*,void const*,size_t,int) ; 

int
FUNC8(struct inode *inode, int name_index, const char *name,
	       const void *value, size_t value_len, int flags)
{
	handle_t *handle;
	struct super_block *sb = inode->i_sb;
	int error, retries = 0;
	int credits;

	error = FUNC2(inode);
	if (error)
		return error;

retry:
	error = FUNC6(inode, value_len, flags & XATTR_CREATE,
				       &credits);
	if (error)
		return error;

	handle = FUNC3(inode, EXT4_HT_XATTR, credits);
	if (FUNC0(handle)) {
		error = FUNC1(handle);
	} else {
		int error2;

		error = FUNC7(handle, inode, name_index, name,
					      value, value_len, flags);
		error2 = FUNC4(handle);
		if (error == -ENOSPC &&
		    FUNC5(sb, &retries))
			goto retry;
		if (error == 0)
			error = error2;
	}

	return error;
}