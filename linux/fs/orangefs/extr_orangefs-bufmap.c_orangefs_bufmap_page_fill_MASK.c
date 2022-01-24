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
struct orangefs_bufmap_desc {int /*<<< orphan*/ * page_array; } ;
struct TYPE_2__ {struct orangefs_bufmap_desc* desc_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__* __orangefs_bufmap ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 

void FUNC3(void *page_to,
				int buffer_index,
				int slot_index)
{
	struct orangefs_bufmap_desc *from;
	void *page_from;

	from = &__orangefs_bufmap->desc_array[buffer_index];
	page_from = FUNC0(from->page_array[slot_index]);
	FUNC2(page_to, page_from, PAGE_SIZE);
	FUNC1(page_from);
}