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
struct iomap_page_ops {int (* page_prepare ) (struct inode*,unsigned int,unsigned int,struct iomap*) ;int /*<<< orphan*/  (* page_done ) (struct inode*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct iomap*) ;} ;
struct iomap {unsigned int offset; unsigned int length; scalar_t__ type; int flags; struct iomap_page_ops* page_ops; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  unsigned int pgoff_t ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int ENOMEM ; 
 int IOMAP_F_BUFFER_HEAD ; 
 scalar_t__ IOMAP_INLINE ; 
 unsigned int PAGE_SHIFT ; 
 int FUNC1 (struct page*,unsigned int,unsigned int,int /*<<< orphan*/ *,struct iomap*) ; 
 int FUNC2 (struct inode*,unsigned int,unsigned int,struct page*,struct iomap*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct page*,struct iomap*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct inode*,unsigned int,unsigned int,struct iomap*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct iomap*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, loff_t pos, unsigned len, unsigned flags,
		struct page **pagep, struct iomap *iomap)
{
	const struct iomap_page_ops *page_ops = iomap->page_ops;
	pgoff_t index = pos >> PAGE_SHIFT;
	struct page *page;
	int status = 0;

	FUNC0(pos + len > iomap->offset + iomap->length);

	if (FUNC3(current))
		return -EINTR;

	if (page_ops && page_ops->page_prepare) {
		status = page_ops->page_prepare(inode, pos, len, iomap);
		if (status)
			return status;
	}

	page = FUNC4(inode->i_mapping, index, flags);
	if (!page) {
		status = -ENOMEM;
		goto out_no_page;
	}

	if (iomap->type == IOMAP_INLINE)
		FUNC5(inode, page, iomap);
	else if (iomap->flags & IOMAP_F_BUFFER_HEAD)
		status = FUNC1(page, pos, len, NULL, iomap);
	else
		status = FUNC2(inode, pos, len, page, iomap);

	if (FUNC10(status))
		goto out_unlock;

	*pagep = page;
	return 0;

out_unlock:
	FUNC11(page);
	FUNC7(page);
	FUNC6(inode, pos, len);

out_no_page:
	if (page_ops && page_ops->page_done)
		page_ops->page_done(inode, pos, 0, NULL, iomap);
	return status;
}