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
 struct f2fs_node* FUNC0 (struct page*) ; 
 unsigned int OFFSET_BIT_SHIFT ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct page *node_page)
{
	struct f2fs_node *rn = FUNC0(node_page);
	unsigned flag = FUNC1(rn->footer.flag);
	return flag >> OFFSET_BIT_SHIFT;
}