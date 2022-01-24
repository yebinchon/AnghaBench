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
struct rmap_walk_control {void* arg; int /*<<< orphan*/  anon_lock; int /*<<< orphan*/  done; int /*<<< orphan*/  rmap_one; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ TTU_MUNLOCK ; 
 int /*<<< orphan*/  FUNC4 (int,struct page*) ; 
 int /*<<< orphan*/  page_lock_anon_vma_read ; 
 int /*<<< orphan*/  page_not_mapped ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct rmap_walk_control*) ; 
 int /*<<< orphan*/  try_to_unmap_one ; 

void FUNC6(struct page *page)
{
	struct rmap_walk_control rwc = {
		.rmap_one = try_to_unmap_one,
		.arg = (void *)TTU_MUNLOCK,
		.done = page_not_mapped,
		.anon_lock = page_lock_anon_vma_read,

	};

	FUNC4(!FUNC3(page) || FUNC2(page), page);
	FUNC4(FUNC0(page) && FUNC1(page), page);

	FUNC5(page, &rwc);
}