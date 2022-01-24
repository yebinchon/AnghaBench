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
struct iomap {unsigned int inline_data; } ;
struct inode {int dummy; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,void*,unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, struct page *page,
		struct iomap *iomap, loff_t pos, unsigned copied)
{
	void *addr;

	FUNC2(!FUNC1(page));
	FUNC0(pos + copied > PAGE_SIZE - FUNC7(iomap->inline_data));

	addr = FUNC3(page);
	FUNC6(iomap->inline_data + pos, addr + pos, copied);
	FUNC4(addr);

	FUNC5(inode);
	return copied;
}