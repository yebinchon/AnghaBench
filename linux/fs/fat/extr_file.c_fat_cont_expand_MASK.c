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
struct inode {scalar_t__ i_size; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int S_CTIME ; 
 int S_MTIME ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct address_space*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct address_space*,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct address_space*) ; 
 int FUNC7 (struct inode*,int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, loff_t size)
{
	struct address_space *mapping = inode->i_mapping;
	loff_t start = inode->i_size, count = size - inode->i_size;
	int err;

	err = FUNC4(inode, size);
	if (err)
		goto out;

	FUNC1(inode, NULL, S_CTIME|S_MTIME);
	FUNC5(inode);
	if (FUNC0(inode)) {
		int err2;

		/*
		 * Opencode syncing since we don't have a file open to use
		 * standard fsync path.
		 */
		err = FUNC3(mapping, start,
					       start + count - 1);
		err2 = FUNC6(mapping);
		if (!err)
			err = err2;
		err2 = FUNC7(inode, 1);
		if (!err)
			err = err2;
		if (!err) {
			err =  FUNC2(mapping, start,
						       start + count - 1);
		}
	}
out:
	return err;
}