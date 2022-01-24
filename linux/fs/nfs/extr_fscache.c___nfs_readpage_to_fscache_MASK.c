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
struct page {int /*<<< orphan*/  flags; int /*<<< orphan*/  index; } ;
struct inode {int /*<<< orphan*/  i_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_UNCACHED ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL ; 
 int /*<<< orphan*/  NFSIOS_FSCACHE_PAGES_WRITTEN_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct page*,struct page*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

void FUNC5(struct inode *inode, struct page *page, int sync)
{
	int ret;

	FUNC0(FSCACHE,
		 "NFS: readpage_to_fscache(fsc:%p/p:%p(i:%lx f:%lx)/%d)\n",
		 FUNC3(inode), page, page->index, page->flags, sync);

	ret = FUNC2(FUNC3(inode), page,
				 inode->i_size, GFP_KERNEL);
	FUNC0(FSCACHE,
		 "NFS:     readpage_to_fscache: p:%p(i:%lu f:%lx) ret %d\n",
		 page, page->index, page->flags, ret);

	if (ret != 0) {
		FUNC1(FUNC3(inode), page);
		FUNC4(inode,
				      NFSIOS_FSCACHE_PAGES_WRITTEN_FAIL);
		FUNC4(inode, NFSIOS_FSCACHE_PAGES_UNCACHED);
	} else {
		FUNC4(inode,
				      NFSIOS_FSCACHE_PAGES_WRITTEN_OK);
	}
}