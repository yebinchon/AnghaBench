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
struct size_class {int size; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long OBJ_ALLOCATED_TAG ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct page*) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 unsigned long FUNC3 (struct page*,void*) ; 
 scalar_t__ FUNC4 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC5(struct size_class *class,
					struct page *page, int *obj_idx)
{
	unsigned long head;
	int offset = 0;
	int index = *obj_idx;
	unsigned long handle = 0;
	void *addr = FUNC1(page);

	offset = FUNC0(page);
	offset += class->size * index;

	while (offset < PAGE_SIZE) {
		head = FUNC3(page, addr + offset);
		if (head & OBJ_ALLOCATED_TAG) {
			handle = head & ~OBJ_ALLOCATED_TAG;
			if (FUNC4(handle))
				break;
			handle = 0;
		}

		offset += class->size;
		index++;
	}

	FUNC2(addr);

	*obj_idx = index;

	return handle;
}