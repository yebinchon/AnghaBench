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
struct kioctx {int nr_pages; struct page** ring_pages; struct page** internal_pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct page**) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kioctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct kioctx *ctx)
{
	int i;

	/* Disconnect the kiotx from the ring file.  This prevents future
	 * accesses to the kioctx from page migration.
	 */
	FUNC3(ctx);

	for (i = 0; i < ctx->nr_pages; i++) {
		struct page *page;
		FUNC2("pid(%d) [%d] page->count=%d\n", current->pid, i,
				FUNC1(ctx->ring_pages[i]));
		page = ctx->ring_pages[i];
		if (!page)
			continue;
		ctx->ring_pages[i] = NULL;
		FUNC4(page);
	}

	if (ctx->ring_pages && ctx->ring_pages != ctx->internal_pages) {
		FUNC0(ctx->ring_pages);
		ctx->ring_pages = NULL;
	}
}