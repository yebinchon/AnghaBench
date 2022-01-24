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
struct TYPE_4__ {int flags; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int count; } ;
struct page_pool {TYPE_2__ p; int /*<<< orphan*/  ring; TYPE_1__ alloc; } ;

/* Variables and functions */
 int PP_FLAG_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct page_pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct page_pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct page_pool*) ; 
 int /*<<< orphan*/  FUNC4 (struct page_pool*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct page_pool *pool)
{
	/* Only last user actually free/release resources */
	if (!FUNC4(pool))
		return;

	FUNC0(pool->alloc.count, "API usage violation");
	FUNC0(!FUNC6(&pool->ring), "ptr_ring is not empty");

	/* Can happen due to forced shutdown */
	if (!FUNC1(pool))
		FUNC2(pool);

	FUNC5(&pool->ring, NULL);

	if (pool->p.flags & PP_FLAG_DMA_MAP)
		FUNC7(pool->p.dev);

	FUNC3(pool);
}