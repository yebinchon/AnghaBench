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
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int,unsigned int,struct page**,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct address_space*,int /*<<< orphan*/ ,int,int,struct page*,void*) ; 

int FUNC5(struct inode *inode, const char *symname, int len, int nofs)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;
	void *fsdata;
	int err;
	unsigned int flags = 0;
	if (nofs)
		flags |= AOP_FLAG_NOFS;

retry:
	err = FUNC3(NULL, mapping, 0, len-1,
				flags, &page, &fsdata);
	if (err)
		goto fail;

	FUNC1(FUNC2(page), symname, len-1);

	err = FUNC4(NULL, mapping, 0, len-1, len-1,
							page, fsdata);
	if (err < 0)
		goto fail;
	if (err < len-1)
		goto retry;

	FUNC0(inode);
	return 0;
fail:
	return err;
}