#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct file {int dummy; } ;
struct address_space {TYPE_1__* host; } ;
typedef  int loff_t ;
struct TYPE_6__ {unsigned int write_io; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PAGECACHE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct file*,int /*<<< orphan*/ ,unsigned int,long long) ; 
 scalar_t__ FUNC4 (struct nfs_open_context*,TYPE_1__*) ; 
 struct nfs_open_context* FUNC5 (struct file*) ; 
 unsigned int FUNC6 (struct page*) ; 
 int FUNC7 (struct file*,struct page*,unsigned int,unsigned int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC13(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	unsigned offset = pos & (PAGE_SIZE - 1);
	struct nfs_open_context *ctx = FUNC5(file);
	int status;

	FUNC3(PAGECACHE, "NFS: write_end(%pD2(%lu), %u@%lld)\n",
		file, mapping->host->i_ino, len, (long long) pos);

	/*
	 * Zero any uninitialised parts of the page, and then mark the page
	 * as up to date if it turns out that we're extending the file.
	 */
	if (!FUNC1(page)) {
		unsigned pglen = FUNC6(page);
		unsigned end = offset + copied;

		if (pglen == 0) {
			FUNC12(page, 0, offset,
					end, PAGE_SIZE);
			FUNC2(page);
		} else if (end >= pglen) {
			FUNC11(page, end, PAGE_SIZE);
			if (offset == 0)
				FUNC2(page);
		} else
			FUNC11(page, pglen, PAGE_SIZE);
	}

	status = FUNC7(file, page, offset, copied);

	FUNC10(page);
	FUNC9(page);

	if (status < 0)
		return status;
	FUNC0(mapping->host)->write_io += copied;

	if (FUNC4(ctx, mapping->host)) {
		status = FUNC8(mapping->host);
		if (status < 0)
			return status;
	}

	return copied;
}