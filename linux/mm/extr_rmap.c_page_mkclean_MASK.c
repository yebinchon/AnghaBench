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
struct rmap_walk_control {void* arg; int /*<<< orphan*/  invalid_vma; int /*<<< orphan*/  rmap_one; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  invalid_mkclean_vma ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct address_space* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  page_mkclean_one ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct rmap_walk_control*) ; 

int FUNC5(struct page *page)
{
	int cleaned = 0;
	struct address_space *mapping;
	struct rmap_walk_control rwc = {
		.arg = (void *)&cleaned,
		.rmap_one = page_mkclean_one,
		.invalid_vma = invalid_mkclean_vma,
	};

	FUNC0(!FUNC1(page));

	if (!FUNC2(page))
		return 0;

	mapping = FUNC3(page);
	if (!mapping)
		return 0;

	FUNC4(page, &rwc);

	return cleaned;
}