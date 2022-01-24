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
struct iomap {int flags; } ;
struct inode {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int IOMAP_F_BUFFER_HEAD ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct page*,int,int,int /*<<< orphan*/ *,struct iomap*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static loff_t
FUNC6(struct inode *inode, loff_t pos, loff_t length,
		void *data, struct iomap *iomap)
{
	struct page *page = data;
	int ret;

	if (iomap->flags & IOMAP_F_BUFFER_HEAD) {
		ret = FUNC2(page, pos, length, NULL, iomap);
		if (ret)
			return ret;
		FUNC3(page, 0, length);
	} else {
		FUNC1(!FUNC0(page));
		FUNC4(inode, page);
		FUNC5(page);
	}

	return length;
}