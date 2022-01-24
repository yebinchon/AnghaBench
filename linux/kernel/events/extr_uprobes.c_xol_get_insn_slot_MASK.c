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
struct xol_area {int /*<<< orphan*/ * pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  ixol; } ;
struct uprobe {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int) ; 
 struct xol_area* FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned long FUNC3 (struct xol_area*) ; 

__attribute__((used)) static unsigned long FUNC4(struct uprobe *uprobe)
{
	struct xol_area *area;
	unsigned long xol_vaddr;

	area = FUNC1();
	if (!area)
		return 0;

	xol_vaddr = FUNC3(area);
	if (FUNC2(!xol_vaddr))
		return 0;

	FUNC0(area->pages[0], xol_vaddr,
			      &uprobe->arch.ixol, sizeof(uprobe->arch.ixol));

	return xol_vaddr;
}