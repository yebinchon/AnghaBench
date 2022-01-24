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
struct page {int index; } ;
struct iomap {int /*<<< orphan*/  inline_data; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 size_t FUNC3 (struct inode*) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct inode *inode, struct page *page,
		struct iomap *iomap)
{
	size_t size = FUNC3(inode);
	void *addr;

	if (FUNC1(page))
		return;

	FUNC0(page->index);
	FUNC0(size > PAGE_SIZE - FUNC8(iomap->inline_data));

	addr = FUNC4(page);
	FUNC6(addr, iomap->inline_data, size);
	FUNC7(addr + size, 0, PAGE_SIZE - size);
	FUNC5(addr);
	FUNC2(page);
}