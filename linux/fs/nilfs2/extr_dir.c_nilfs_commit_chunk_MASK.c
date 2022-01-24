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
struct inode {scalar_t__ i_size; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_TI_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 unsigned int FUNC4 (struct page*,unsigned int,unsigned int) ; 
 int FUNC5 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static void FUNC9(struct page *page,
			       struct address_space *mapping,
			       unsigned int from, unsigned int to)
{
	struct inode *dir = mapping->host;
	loff_t pos = FUNC7(page) + from;
	unsigned int len = to - from;
	unsigned int nr_dirty, copied;
	int err;

	nr_dirty = FUNC4(page, from, to);
	copied = FUNC2(NULL, mapping, pos, len, len, page, NULL);
	if (pos + copied > dir->i_size)
		FUNC3(dir, pos + copied);
	if (FUNC0(dir))
		FUNC6(NILFS_TI_SYNC);
	err = FUNC5(dir, nr_dirty);
	FUNC1(err); /* do not happen */
	FUNC8(page);
}