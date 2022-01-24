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
struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {TYPE_1__* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct file*,int /*<<< orphan*/ ,unsigned int,long long) ; 
 struct page* FUNC1 (struct address_space*,int,unsigned int) ; 
 int FUNC2 (struct file*,struct page*) ; 
 int FUNC3 (struct file*,struct page*) ; 
 scalar_t__ FUNC4 (struct file*,struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned flags,
			struct page **pagep, void **fsdata)
{
	int ret;
	pgoff_t index = pos >> PAGE_SHIFT;
	struct page *page;
	int once_thru = 0;

	FUNC0(PAGECACHE, "NFS: write_begin(%pD2(%lu), %u@%lld)\n",
		file, mapping->host->i_ino, len, (long long) pos);

start:
	page = FUNC1(mapping, index, flags);
	if (!page)
		return -ENOMEM;
	*pagep = page;

	ret = FUNC2(file, page);
	if (ret) {
		FUNC6(page);
		FUNC5(page);
	} else if (!once_thru &&
		   FUNC4(file, page, pos, len)) {
		once_thru = 1;
		ret = FUNC3(file, page);
		FUNC5(page);
		if (!ret)
			goto start;
	}
	return ret;
}