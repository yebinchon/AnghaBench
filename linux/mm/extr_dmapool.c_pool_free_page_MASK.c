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
struct dma_pool {int /*<<< orphan*/  allocation; int /*<<< orphan*/  dev; } ;
struct dma_page {int /*<<< orphan*/  page_list; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  dma; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  POOL_POISON_FREED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dma_pool *pool, struct dma_page *page)
{
	dma_addr_t dma = page->dma;

#ifdef	DMAPOOL_DEBUG
	memset(page->vaddr, POOL_POISON_FREED, pool->allocation);
#endif
	FUNC0(pool->dev, pool->allocation, page->vaddr, dma);
	FUNC2(&page->page_list);
	FUNC1(page);
}