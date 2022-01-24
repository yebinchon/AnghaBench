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
struct z3fold_pool {int dummy; } ;
struct z3fold_header {int /*<<< orphan*/  mapped_count; } ;
struct page {int /*<<< orphan*/  private; } ;
typedef  enum buddy { ____Placeholder_buddy } buddy ;

/* Variables and functions */
 int MIDDLE ; 
 int /*<<< orphan*/  MIDDLE_CHUNK_MAPPED ; 
 int /*<<< orphan*/  PAGE_HEADLESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned long) ; 
 struct z3fold_header* FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC4 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC5 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct z3fold_header*) ; 

__attribute__((used)) static void FUNC7(struct z3fold_pool *pool, unsigned long handle)
{
	struct z3fold_header *zhdr;
	struct page *page;
	enum buddy buddy;

	zhdr = FUNC2(handle);
	page = FUNC4(zhdr);

	if (FUNC3(PAGE_HEADLESS, &page->private))
		return;

	FUNC5(zhdr);
	buddy = FUNC1(handle);
	if (buddy == MIDDLE)
		FUNC0(MIDDLE_CHUNK_MAPPED, &page->private);
	zhdr->mapped_count--;
	FUNC6(zhdr);
}