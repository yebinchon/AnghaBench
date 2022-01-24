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
struct zspage {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pages_compacted; } ;
struct zs_pool {TYPE_1__ stats; } ;
struct zs_compact_control {void* d_page; void* s_page; scalar_t__ obj_idx; } ;
struct size_class {int /*<<< orphan*/  lock; scalar_t__ pages_per_zspage; } ;

/* Variables and functions */
 scalar_t__ ZS_EMPTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct zs_pool*,struct size_class*,struct zspage*) ; 
 void* FUNC2 (struct zspage*) ; 
 struct zspage* FUNC3 (struct size_class*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zs_pool*,struct size_class*,struct zs_compact_control*) ; 
 scalar_t__ FUNC5 (struct size_class*,struct zspage*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct size_class*) ; 

__attribute__((used)) static void FUNC9(struct zs_pool *pool, struct size_class *class)
{
	struct zs_compact_control cc;
	struct zspage *src_zspage;
	struct zspage *dst_zspage = NULL;

	FUNC6(&class->lock);
	while ((src_zspage = FUNC3(class, true))) {

		if (!FUNC8(class))
			break;

		cc.obj_idx = 0;
		cc.s_page = FUNC2(src_zspage);

		while ((dst_zspage = FUNC3(class, false))) {
			cc.d_page = FUNC2(dst_zspage);
			/*
			 * If there is no more space in dst_page, resched
			 * and see if anyone had allocated another zspage.
			 */
			if (!FUNC4(pool, class, &cc))
				break;

			FUNC5(class, dst_zspage);
		}

		/* Stop if we couldn't find slot */
		if (dst_zspage == NULL)
			break;

		FUNC5(class, dst_zspage);
		if (FUNC5(class, src_zspage) == ZS_EMPTY) {
			FUNC1(pool, class, src_zspage);
			pool->stats.pages_compacted += class->pages_per_zspage;
		}
		FUNC7(&class->lock);
		FUNC0();
		FUNC6(&class->lock);
	}

	if (src_zspage)
		FUNC5(class, src_zspage);

	FUNC7(&class->lock);
}