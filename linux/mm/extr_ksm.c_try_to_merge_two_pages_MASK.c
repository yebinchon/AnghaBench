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
struct rmap_item {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rmap_item*) ; 
 int FUNC1 (struct rmap_item*,struct page*,struct page*) ; 

__attribute__((used)) static struct page *FUNC2(struct rmap_item *rmap_item,
					   struct page *page,
					   struct rmap_item *tree_rmap_item,
					   struct page *tree_page)
{
	int err;

	err = FUNC1(rmap_item, page, NULL);
	if (!err) {
		err = FUNC1(tree_rmap_item,
							tree_page, page);
		/*
		 * If that fails, we have a ksm page with only one pte
		 * pointing to it: so break it.
		 */
		if (err)
			FUNC0(rmap_item);
	}
	return err ? NULL : page;
}