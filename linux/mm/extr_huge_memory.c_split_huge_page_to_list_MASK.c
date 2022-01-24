#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct pglist_data {int /*<<< orphan*/  lru_lock; } ;
struct page {struct address_space* mapping; } ;
struct list_head {int dummy; } ;
struct deferred_split {int /*<<< orphan*/  split_queue_lock; int /*<<< orphan*/  split_queue_len; } ;
struct anon_vma {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_pages; int /*<<< orphan*/  host; } ;
typedef  int pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CONFIG_DEBUG_VM ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct pglist_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_FILE_THPS ; 
 int /*<<< orphan*/  NR_SHMEM_THPS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int /*<<< orphan*/  THP_SPLIT_PAGE ; 
 int /*<<< orphan*/  THP_SPLIT_PAGE_FAILED ; 
 int /*<<< orphan*/  FUNC12 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,struct list_head*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC17 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,int*) ; 
 struct page* FUNC19 (struct page*) ; 
 int FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,char*) ; 
 struct deferred_split* FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC25 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int FUNC31 (struct page*) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 
 struct anon_vma* FUNC33 (struct page*) ; 
 int /*<<< orphan*/  FUNC34 (struct page*) ; 
 int /*<<< orphan*/  FUNC35 (struct page*) ; 
 scalar_t__ FUNC36 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct page*) ; 
 int /*<<< orphan*/  FUNC38 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC39 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC40 (struct page*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC45 (TYPE_1__) ; 
 int FUNC46 (struct page*) ; 
 int /*<<< orphan*/  FUNC47 (struct page*) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xas ; 
 struct page* FUNC50 (int /*<<< orphan*/ *) ; 

int FUNC51(struct page *page, struct list_head *list)
{
	struct page *head = FUNC19(page);
	struct pglist_data *pgdata = FUNC3(FUNC37(head));
	struct deferred_split *ds_queue = FUNC23(page);
	struct anon_vma *anon_vma = NULL;
	struct address_space *mapping = NULL;
	int count, mapcount, extra_pins, ret;
	bool mlocked;
	unsigned long flags;
	pgoff_t end;

	FUNC12(FUNC27(page), page);
	FUNC12(!FUNC6(page), page);
	FUNC12(!FUNC5(page), page);

	if (FUNC11(page))
		return -EBUSY;

	if (FUNC4(head)) {
		/*
		 * The caller does not necessarily hold an mmap_sem that would
		 * prevent the anon_vma disappearing so we first we take a
		 * reference to it and then lock the anon_vma for write. This
		 * is similar to page_lock_anon_vma_read except the write lock
		 * is taken to serialise against parallel split or collapse
		 * operations.
		 */
		anon_vma = FUNC33(head);
		if (!anon_vma) {
			ret = -EBUSY;
			goto out;
		}
		end = -1;
		mapping = NULL;
		FUNC16(anon_vma);
	} else {
		mapping = head->mapping;

		/* Truncated ? */
		if (!mapping) {
			ret = -EBUSY;
			goto out;
		}

		anon_vma = NULL;
		FUNC24(mapping);

		/*
		 *__split_huge_page() may need to trim off pages beyond EOF:
		 * but on 32-bit, i_size_read() takes an irq-unsafe seqlock,
		 * which cannot be nested inside the page tree lock. So note
		 * end now: i_size itself may be changed at any moment, but
		 * head page lock is good enough to serialize the trimming.
		 */
		end = FUNC1(FUNC26(mapping->host), PAGE_SIZE);
	}

	/*
	 * Racy check if we can split the page, before unmap_page() will
	 * split PMDs
	 */
	if (!FUNC18(head, &extra_pins)) {
		ret = -EBUSY;
		goto out_unlock;
	}

	mlocked = FUNC7(page);
	FUNC47(head);
	FUNC12(FUNC20(head), head);

	/* Make sure the page is not on per-CPU pagevec as it takes pin */
	if (mlocked)
		FUNC30();

	/* prevent PageLRU to go away from under us, and freeze lru stats */
	FUNC42(&pgdata->lru_lock, flags);

	if (mapping) {
		FUNC13(xas, &mapping->i_pages, FUNC34(head));

		/*
		 * Check if the head page is present in page cache.
		 * We assume all tail are present too, if head is there.
		 */
		FUNC48(&mapping->i_pages);
		if (FUNC50(&xas) != head)
			goto fail;
	}

	/* Prevent deferred_split_scan() touching ->_refcount */
	FUNC41(&ds_queue->split_queue_lock);
	count = FUNC31(head);
	mapcount = FUNC46(head);
	if (!mapcount && FUNC36(head, 1 + extra_pins)) {
		if (!FUNC29(FUNC32(head))) {
			ds_queue->split_queue_len--;
			FUNC28(FUNC32(head));
		}
		if (mapping) {
			if (FUNC8(page))
				FUNC14(page, NR_SHMEM_THPS);
			else
				FUNC14(page, NR_FILE_THPS);
		}

		FUNC43(&ds_queue->split_queue_lock);
		FUNC15(page, list, end, flags);
		if (FUNC9(head)) {
			swp_entry_t entry = { .val = FUNC35(head) };

			ret = FUNC45(entry);
		} else
			ret = 0;
	} else {
		if (FUNC2(CONFIG_DEBUG_VM) && mapcount) {
			FUNC38("total_mapcount: %u, page_count(): %u\n",
					mapcount, count);
			if (FUNC10(page))
				FUNC22(head, NULL);
			FUNC22(page, "total_mapcount(head) > 0");
			FUNC0();
		}
		FUNC43(&ds_queue->split_queue_lock);
fail:		if (mapping)
			FUNC49(&mapping->i_pages);
		FUNC44(&pgdata->lru_lock, flags);
		FUNC40(head);
		ret = -EBUSY;
	}

out_unlock:
	if (anon_vma) {
		FUNC17(anon_vma);
		FUNC39(anon_vma);
	}
	if (mapping)
		FUNC25(mapping);
out:
	FUNC21(!ret ? THP_SPLIT_PAGE : THP_SPLIT_PAGE_FAILED);
	return ret;
}