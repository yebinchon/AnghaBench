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
struct TYPE_2__ {int /*<<< orphan*/  flag; } ;
struct f2fs_node {TYPE_1__ footer; } ;

/* Variables and functions */
 int COLD_BIT_SHIFT ; 
 struct f2fs_node* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct page *page, bool is_dir)
{
	struct f2fs_node *rn = FUNC0(page);
	unsigned int flag = FUNC2(rn->footer.flag);

	if (is_dir)
		flag &= ~(0x1 << COLD_BIT_SHIFT);
	else
		flag |= (0x1 << COLD_BIT_SHIFT);
	rn->footer.flag = FUNC1(flag);
}