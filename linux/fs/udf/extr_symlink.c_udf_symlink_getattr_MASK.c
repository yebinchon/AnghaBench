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
typedef  int /*<<< orphan*/  u32 ;
struct path {struct dentry* dentry; } ;
struct page {int dummy; } ;
struct kstat {int /*<<< orphan*/  size; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct path *path, struct kstat *stat,
				u32 request_mask, unsigned int flags)
{
	struct dentry *dentry = path->dentry;
	struct inode *inode = FUNC2(dentry);
	struct page *page;

	FUNC3(inode, stat);
	page = FUNC6(inode->i_mapping, 0, NULL);
	if (FUNC0(page))
		return FUNC1(page);
	/*
	 * UDF uses non-trivial encoding of symlinks so i_size does not match
	 * number of characters reported by readlink(2) which apparently some
	 * applications expect. Also POSIX says that "The value returned in the
	 * st_size field shall be the length of the contents of the symbolic
	 * link, and shall not count a trailing null if one is present." So
	 * let's report the length of string returned by readlink(2) for
	 * st_size.
	 */
	stat->size = FUNC7(FUNC4(page));
	FUNC5(page);

	return 0;
}