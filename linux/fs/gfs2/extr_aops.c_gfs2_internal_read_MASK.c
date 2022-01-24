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
struct TYPE_2__ {struct address_space* i_mapping; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  __gfs2_readpage ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct address_space*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct gfs2_inode *ip, char *buf, loff_t *pos,
                       unsigned size)
{
	struct address_space *mapping = ip->i_inode.i_mapping;
	unsigned long index = *pos >> PAGE_SHIFT;
	unsigned offset = *pos & (PAGE_SIZE - 1);
	unsigned copied = 0;
	unsigned amt;
	struct page *page;
	void *p;

	do {
		amt = size - copied;
		if (offset + size > PAGE_SIZE)
			amt = PAGE_SIZE - offset;
		page = FUNC6(mapping, index, __gfs2_readpage, NULL);
		if (FUNC0(page))
			return FUNC1(page);
		p = FUNC2(page);
		FUNC4(buf + copied, p + offset, amt);
		FUNC3(p);
		FUNC5(page);
		copied += amt;
		index++;
		offset = 0;
	} while(copied < size);
	(*pos) += size;
	return size;
}