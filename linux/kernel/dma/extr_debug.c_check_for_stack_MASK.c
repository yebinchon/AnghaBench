#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct vm_struct {int nr_pages; struct page** pages; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ stack; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,char*,void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* FUNC3 (struct page*) ; 
 struct vm_struct* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
			    struct page *page, size_t offset)
{
	void *addr;
	struct vm_struct *stack_vm_area = FUNC4(current);

	if (!stack_vm_area) {
		/* Stack is direct-mapped. */
		if (FUNC0(page))
			return;
		addr = FUNC3(page) + offset;
		if (FUNC2(addr))
			FUNC1(dev, NULL, "device driver maps memory from stack [addr=%p]\n", addr);
	} else {
		/* Stack is vmalloced. */
		int i;

		for (i = 0; i < stack_vm_area->nr_pages; i++) {
			if (page != stack_vm_area->pages[i])
				continue;

			addr = (u8 *)current->stack + i * PAGE_SIZE + offset;
			FUNC1(dev, NULL, "device driver maps memory from stack [probable addr=%p]\n", addr);
			break;
		}
	}
}