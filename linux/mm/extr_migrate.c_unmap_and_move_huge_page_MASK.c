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
struct page {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef  struct page* (* new_page_t ) (struct page*,unsigned long) ;
typedef  int /*<<< orphan*/  (* free_page_t ) (struct page*,unsigned long) ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int MIGRATEPAGE_SUCCESS ; 
#define  MIGRATE_SYNC 129 
#define  MIGRATE_SYNC_NO_COPY 128 
 scalar_t__ FUNC0 (struct page*) ; 
 int TTU_IGNORE_ACCESS ; 
 int TTU_IGNORE_MLOCK ; 
 int TTU_MIGRATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct page*,int) ; 
 int FUNC4 (struct page*,struct page*,int) ; 
 struct anon_vma* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(new_page_t get_new_page,
				free_page_t put_new_page, unsigned long private,
				struct page *hpage, int force,
				enum migrate_mode mode, int reason)
{
	int rc = -EAGAIN;
	int page_was_mapped = 0;
	struct page *new_hpage;
	struct anon_vma *anon_vma = NULL;

	/*
	 * Migratability of hugepages depends on architectures and their size.
	 * This check is necessary because some callers of hugepage migration
	 * like soft offline and memory hotremove don't walk through page
	 * tables or check whether the hugepage is pmd-based or not before
	 * kicking migration.
	 */
	if (!FUNC1(FUNC6(hpage))) {
		FUNC11(hpage);
		return -ENOSYS;
	}

	new_hpage = get_new_page(hpage, private);
	if (!new_hpage)
		return -ENOMEM;

	if (!FUNC14(hpage)) {
		if (!force)
			goto out;
		switch (mode) {
		case MIGRATE_SYNC:
		case MIGRATE_SYNC_NO_COPY:
			break;
		default:
			goto out;
		}
		FUNC2(hpage);
	}

	/*
	 * Check for pages which are in the process of being freed.  Without
	 * page_mapping() set, hugetlbfs specific move page routine will not
	 * be called and we could leak usage counts for subpools.
	 */
	if (FUNC9(hpage) && !FUNC8(hpage)) {
		rc = -EBUSY;
		goto out_unlock;
	}

	if (FUNC0(hpage))
		anon_vma = FUNC5(hpage);

	if (FUNC15(!FUNC14(new_hpage)))
		goto put_anon;

	if (FUNC7(hpage)) {
		FUNC13(hpage,
			TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);
		page_was_mapped = 1;
	}

	if (!FUNC7(hpage))
		rc = FUNC4(new_hpage, hpage, mode);

	if (page_was_mapped)
		FUNC12(hpage,
			rc == MIGRATEPAGE_SUCCESS ? new_hpage : hpage, false);

	FUNC16(new_hpage);

put_anon:
	if (anon_vma)
		FUNC10(anon_vma);

	if (rc == MIGRATEPAGE_SUCCESS) {
		FUNC3(hpage, new_hpage, reason);
		put_new_page = NULL;
	}

out_unlock:
	FUNC16(hpage);
out:
	if (rc != -EAGAIN)
		FUNC11(hpage);

	/*
	 * If migration was not successful and there's a freeing callback, use
	 * it.  Otherwise, put_page() will drop the reference grabbed during
	 * isolation.
	 */
	if (put_new_page)
		put_new_page(new_hpage, private);
	else
		FUNC11(new_hpage);

	return rc;
}