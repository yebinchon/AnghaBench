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
struct page {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct page**) ; 
 int /*<<< orphan*/  mt_tree ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct page* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  worker_barrier ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC12(void *arg)
{
	FUNC8();

	if (FUNC3(&worker_barrier) ==
			PTHREAD_BARRIER_SERIAL_THREAD) {
		int j;

		for (j = 0; j < 1000000; j++) {
			struct page *p;

			p = FUNC1(0);
			FUNC10(&mt_tree);
			FUNC7(&mt_tree, 0, p);
			FUNC11(&mt_tree);

			p = FUNC1(1);
			FUNC10(&mt_tree);
			FUNC7(&mt_tree, 1, p);
			FUNC11(&mt_tree);

			FUNC10(&mt_tree);
			p = FUNC6(&mt_tree, 1);
			FUNC4(&p->lock);
			p->count--;
			FUNC5(&p->lock);
			FUNC11(&mt_tree);
			FUNC2(p);

			FUNC10(&mt_tree);
			p = FUNC6(&mt_tree, 0);
			FUNC4(&p->lock);
			p->count--;
			FUNC5(&p->lock);
			FUNC11(&mt_tree);
			FUNC2(p);
		}
	} else {
		int j;

		for (j = 0; j < 100000000; j++) {
			struct page *pages[10];

			FUNC0(0, 10, pages);
		}
	}

	FUNC9();

	return NULL;
}