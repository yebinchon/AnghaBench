#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; TYPE_2__* b_page; } ;
struct TYPE_4__ {TYPE_1__* mapping; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

int FUNC8(struct buffer_head *bh)
{
	FUNC7(bh);
	if (!FUNC2(bh)) {
		struct inode *inode = bh->b_page->mapping->host;

		FUNC6(inode->i_sb, KERN_ERR,
			  "I/O error reading %s block for GC (ino=%lu, vblocknr=%llu)",
			  FUNC1(bh) ? "node" : "data",
			  inode->i_ino, (unsigned long long)bh->b_blocknr);
		return -EIO;
	}
	if (FUNC0(bh))
		return -EEXIST;

	if (FUNC1(bh) && FUNC5(bh)) {
		FUNC3(bh);
		return -EIO;
	}
	FUNC4(bh);
	return 0;
}