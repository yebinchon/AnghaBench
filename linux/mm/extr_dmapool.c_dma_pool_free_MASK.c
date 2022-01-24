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
struct dma_pool {unsigned int allocation; int /*<<< orphan*/  lock; int /*<<< orphan*/  size; int /*<<< orphan*/  name; scalar_t__ dev; } ;
struct dma_page {void* vaddr; unsigned int dma; unsigned int offset; int /*<<< orphan*/  in_use; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  POOL_POISON_FREED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int /*<<< orphan*/ ,unsigned int*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_page* FUNC2 (struct dma_pool*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 () ; 

void FUNC7(struct dma_pool *pool, void *vaddr, dma_addr_t dma)
{
	struct dma_page *page;
	unsigned long flags;
	unsigned int offset;

	FUNC4(&pool->lock, flags);
	page = FUNC2(pool, dma);
	if (!page) {
		FUNC5(&pool->lock, flags);
		if (pool->dev)
			FUNC0(pool->dev,
				"dma_pool_free %s, %p/%lx (bad dma)\n",
				pool->name, vaddr, (unsigned long)dma);
		else
			FUNC3("dma_pool_free %s, %p/%lx (bad dma)\n",
			       pool->name, vaddr, (unsigned long)dma);
		return;
	}

	offset = vaddr - page->vaddr;
	if (FUNC6())
		FUNC1(vaddr, 0, pool->size);
#ifdef	DMAPOOL_DEBUG
	if ((dma - page->dma) != offset) {
		spin_unlock_irqrestore(&pool->lock, flags);
		if (pool->dev)
			dev_err(pool->dev,
				"dma_pool_free %s, %p (bad vaddr)/%pad\n",
				pool->name, vaddr, &dma);
		else
			pr_err("dma_pool_free %s, %p (bad vaddr)/%pad\n",
			       pool->name, vaddr, &dma);
		return;
	}
	{
		unsigned int chain = page->offset;
		while (chain < pool->allocation) {
			if (chain != offset) {
				chain = *(int *)(page->vaddr + chain);
				continue;
			}
			spin_unlock_irqrestore(&pool->lock, flags);
			if (pool->dev)
				dev_err(pool->dev, "dma_pool_free %s, dma %pad already free\n",
					pool->name, &dma);
			else
				pr_err("dma_pool_free %s, dma %pad already free\n",
				       pool->name, &dma);
			return;
		}
	}
	memset(vaddr, POOL_POISON_FREED, pool->size);
#endif

	page->in_use--;
	*(int *)vaddr = page->offset;
	page->offset = offset;
	/*
	 * Resist a temptation to do
	 *    if (!is_page_busy(page)) pool_free_page(pool, page);
	 * Better have a few empty pages hang around.
	 */
	FUNC5(&pool->lock, flags);
}