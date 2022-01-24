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
struct z3fold_header {int start_middle; int /*<<< orphan*/  mapped_count; } ;
struct page {int /*<<< orphan*/  private; } ;
typedef  enum buddy { ____Placeholder_buddy } buddy ;

/* Variables and functions */
 int CHUNK_SHIFT ; 
#define  FIRST 130 
#define  LAST 129 
#define  MIDDLE 128 
 int /*<<< orphan*/  MIDDLE_CHUNK_MAPPED ; 
 int /*<<< orphan*/  PAGE_HEADLESS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZHDR_SIZE_ALIGNED ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 struct z3fold_header* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC7 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC8 (struct z3fold_header*) ; 
 int /*<<< orphan*/  FUNC9 (struct z3fold_header*) ; 

__attribute__((used)) static void *FUNC10(struct z3fold_pool *pool, unsigned long handle)
{
	struct z3fold_header *zhdr;
	struct page *page;
	void *addr;
	enum buddy buddy;

	zhdr = FUNC3(handle);
	addr = zhdr;
	page = FUNC7(zhdr);

	if (FUNC6(PAGE_HEADLESS, &page->private))
		goto out;

	FUNC8(zhdr);
	buddy = FUNC1(handle);
	switch (buddy) {
	case FIRST:
		addr += ZHDR_SIZE_ALIGNED;
		break;
	case MIDDLE:
		addr += zhdr->start_middle << CHUNK_SHIFT;
		FUNC5(MIDDLE_CHUNK_MAPPED, &page->private);
		break;
	case LAST:
		addr += PAGE_SIZE - (FUNC2(handle) << CHUNK_SHIFT);
		break;
	default:
		FUNC4("unknown buddy id %d\n", buddy);
		FUNC0(1);
		addr = NULL;
		break;
	}

	if (addr)
		zhdr->mapped_count++;
	FUNC9(zhdr);
out:
	return addr;
}