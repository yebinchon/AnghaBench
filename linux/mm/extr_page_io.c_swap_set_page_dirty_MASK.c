#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct swap_info_struct {int flags; TYPE_1__* swap_file; } ;
struct page {int dummy; } ;
struct address_space {TYPE_2__* a_ops; } ;
struct TYPE_4__ {int (* set_page_dirty ) (struct page*) ;} ;
struct TYPE_3__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int SWP_FS ; 
 int /*<<< orphan*/  FUNC1 (int,struct page*) ; 
 int FUNC2 (struct page*) ; 
 struct swap_info_struct* FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 

int FUNC5(struct page *page)
{
	struct swap_info_struct *sis = FUNC3(page);

	if (sis->flags & SWP_FS) {
		struct address_space *mapping = sis->swap_file->f_mapping;

		FUNC1(!FUNC0(page), page);
		return mapping->a_ops->set_page_dirty(page);
	} else {
		return FUNC2(page);
	}
}