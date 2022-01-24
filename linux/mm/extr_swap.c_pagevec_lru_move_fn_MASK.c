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
struct pglist_data {int /*<<< orphan*/  lru_lock; } ;
struct pagevec {struct page** pages; int /*<<< orphan*/  nr; } ;
typedef  struct page page ;
typedef  struct lruvec lruvec ;

/* Variables and functions */
 struct lruvec* FUNC0 (struct page*,struct pglist_data*) ; 
 struct pglist_data* FUNC1 (struct page*) ; 
 int FUNC2 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC4 (struct page**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 void FUNC7 (struct page*,struct lruvec*,void*) ; 

__attribute__((used)) static void FUNC8(struct pagevec *pvec,
	void (*move_fn)(struct page *page, struct lruvec *lruvec, void *arg),
	void *arg)
{
	int i;
	struct pglist_data *pgdat = NULL;
	struct lruvec *lruvec;
	unsigned long flags = 0;

	for (i = 0; i < FUNC2(pvec); i++) {
		struct page *page = pvec->pages[i];
		struct pglist_data *pagepgdat = FUNC1(page);

		if (pagepgdat != pgdat) {
			if (pgdat)
				FUNC6(&pgdat->lru_lock, flags);
			pgdat = pagepgdat;
			FUNC5(&pgdat->lru_lock, flags);
		}

		lruvec = FUNC0(page, pgdat);
		(*move_fn)(page, lruvec, arg);
	}
	if (pgdat)
		FUNC6(&pgdat->lru_lock, flags);
	FUNC4(pvec->pages, pvec->nr);
	FUNC3(pvec);
}