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
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 unsigned int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct file *file,
			struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	struct inode *inode = page->mapping->host;

	FUNC9(inode, pos, len, copied);

	/*
	 * This should be come from len == PAGE_SIZE, and we expect copied
	 * should be PAGE_SIZE. Otherwise, we treat it with zero copied and
	 * let generic_perform_write() try to copy data again through copied=0.
	 */
	if (!FUNC1(page)) {
		if (FUNC10(copied != len))
			copied = 0;
		else
			FUNC2(page);
	}
	if (!copied)
		goto unlock_out;

	FUNC8(page);

	if (pos + copied > FUNC7(inode) &&
	    !FUNC6(inode))
		FUNC3(inode, pos + copied);
unlock_out:
	FUNC4(page, 1);
	FUNC5(FUNC0(inode), REQ_TIME);
	return copied;
}