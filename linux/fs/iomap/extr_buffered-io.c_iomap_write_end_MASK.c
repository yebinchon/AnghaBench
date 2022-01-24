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
struct iomap_page_ops {int /*<<< orphan*/  (* page_done ) (struct inode*,scalar_t__,int,struct page*,struct iomap*) ;} ;
struct iomap {scalar_t__ type; int flags; struct iomap_page_ops* page_ops; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mapping; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int IOMAP_F_BUFFER_HEAD ; 
 int IOMAP_F_SIZE_CHANGED ; 
 scalar_t__ IOMAP_INLINE ; 
 int FUNC0 (struct inode*,scalar_t__,unsigned int,unsigned int,struct page*,struct iomap*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int,struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 int FUNC3 (struct inode*,struct page*,struct iomap*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,scalar_t__,int,struct page*,struct iomap*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int
FUNC9(struct inode *inode, loff_t pos, unsigned len,
		unsigned copied, struct page *page, struct iomap *iomap)
{
	const struct iomap_page_ops *page_ops = iomap->page_ops;
	loff_t old_size = inode->i_size;
	int ret;

	if (iomap->type == IOMAP_INLINE) {
		ret = FUNC3(inode, page, iomap, pos, copied);
	} else if (iomap->flags & IOMAP_F_BUFFER_HEAD) {
		ret = FUNC1(NULL, inode->i_mapping, pos, len, copied,
				page, NULL);
	} else {
		ret = FUNC0(inode, pos, len, copied, page, iomap);
	}

	/*
	 * Update the in-memory inode size after copying the data into the page
	 * cache.  It's up to the file system to write the updated size to disk,
	 * preferably after I/O completion so that no stale data is exposed.
	 */
	if (pos + ret > old_size) {
		FUNC2(inode, pos + ret);
		iomap->flags |= IOMAP_F_SIZE_CHANGED;
	}
	FUNC8(page);

	if (old_size < pos)
		FUNC5(inode, old_size, pos);
	if (page_ops && page_ops->page_done)
		page_ops->page_done(inode, pos, ret, page, iomap);
	FUNC6(page);

	if (ret < len)
		FUNC4(inode, pos, len);
	return ret;
}