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
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, loff_t pos, unsigned len,
		unsigned copied, struct page *page, struct iomap *iomap)
{
	FUNC1(page);

	/*
	 * The blocks that were entirely written will now be uptodate, so we
	 * don't have to worry about a readpage reading them and overwriting a
	 * partial write.  However if we have encountered a short write and only
	 * partially written into a block, it will not be marked uptodate, so a
	 * readpage might come in and destroy our partial write.
	 *
	 * Do the simplest thing, and just treat any short write to a non
	 * uptodate page as a zero-length write, and force the caller to redo
	 * the whole thing.
	 */
	if (FUNC5(copied < len && !FUNC0(page)))
		return 0;
	FUNC3(page, FUNC4(pos), len);
	FUNC2(page);
	return copied;
}