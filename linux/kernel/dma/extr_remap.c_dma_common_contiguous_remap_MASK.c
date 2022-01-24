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
struct vm_struct {void* addr; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SHIFT ; 
 struct vm_struct* FUNC0 (struct page**,size_t,int /*<<< orphan*/ ,void const*) ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct page**) ; 
 struct page** FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct page*,int) ; 

void *FUNC5(struct page *page, size_t size,
			pgprot_t prot, const void *caller)
{
	int i;
	struct page **pages;
	struct vm_struct *area;

	pages = FUNC3(sizeof(struct page *) << FUNC1(size), GFP_KERNEL);
	if (!pages)
		return NULL;

	for (i = 0; i < (size >> PAGE_SHIFT); i++)
		pages[i] = FUNC4(page, i);

	area = FUNC0(pages, size, prot, caller);

	FUNC2(pages);

	if (!area)
		return NULL;
	return area->addr;
}