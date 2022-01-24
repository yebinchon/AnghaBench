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
struct zspage {int dummy; } ;
struct zs_pool {struct size_class** size_class; } ;
struct size_class {unsigned int size; } ;
struct page {int dummy; } ;
struct mapping_area {int /*<<< orphan*/  vm_addr; } ;
typedef  enum fullness_group { ____Placeholder_fullness_group } fullness_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mapping_area*,struct page**,unsigned long,unsigned long) ; 
 struct page* FUNC2 (struct page*) ; 
 struct zspage* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct zspage*,unsigned int*,int*) ; 
 unsigned long FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zspage*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,struct page**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct mapping_area* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  zs_map_area ; 

void FUNC12(struct zs_pool *pool, unsigned long handle)
{
	struct zspage *zspage;
	struct page *page;
	unsigned long obj, off;
	unsigned int obj_idx;

	unsigned int class_idx;
	enum fullness_group fg;
	struct size_class *class;
	struct mapping_area *area;

	obj = FUNC5(handle);
	FUNC8(obj, &page, &obj_idx);
	zspage = FUNC3(page);
	FUNC4(zspage, &class_idx, &fg);
	class = pool->size_class[class_idx];
	off = (class->size * obj_idx) & ~PAGE_MASK;

	area = FUNC10(&zs_map_area);
	if (off + class->size <= PAGE_SIZE)
		FUNC6(area->vm_addr);
	else {
		struct page *pages[2];

		pages[0] = page;
		pages[1] = FUNC2(page);
		FUNC0(!pages[1]);

		FUNC1(area, pages, off, class->size);
	}
	FUNC9(zs_map_area);

	FUNC7(zspage);
	FUNC11(handle);
}