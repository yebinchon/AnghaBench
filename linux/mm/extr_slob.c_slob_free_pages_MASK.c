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
struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* reclaim_state; } ;
struct TYPE_3__ {int reclaimed_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_SLAB_UNRECLAIMABLE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(void *b, int order)
{
	struct page *sp = FUNC3(b);

	if (current->reclaim_state)
		current->reclaim_state->reclaimed_slab += 1 << order;

	FUNC1(FUNC2(sp), NR_SLAB_UNRECLAIMABLE,
			    -(1 << order));
	FUNC0(sp, order);
}