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
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct hstate {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 struct page* FUNC0 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*,struct vm_area_struct*,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct hstate *h,
			struct vm_area_struct *vma, unsigned long address)
{
	struct address_space *mapping;
	pgoff_t idx;
	struct page *page;

	mapping = vma->vm_file->f_mapping;
	idx = FUNC2(h, vma, address);

	page = FUNC0(mapping, idx);
	if (page)
		FUNC1(page);
	return page != NULL;
}