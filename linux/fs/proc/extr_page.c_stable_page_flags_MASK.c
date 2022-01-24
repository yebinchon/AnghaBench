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
typedef  int u64 ;
struct page {int flags; } ;

/* Variables and functions */
 int KPF_ACTIVE ; 
 int KPF_ANON ; 
 int KPF_ARCH ; 
 int KPF_BUDDY ; 
 int KPF_COMPOUND_HEAD ; 
 int KPF_COMPOUND_TAIL ; 
 int KPF_DIRTY ; 
 int KPF_ERROR ; 
 int KPF_HUGE ; 
 int KPF_HWPOISON ; 
 int KPF_IDLE ; 
 int KPF_KSM ; 
 int KPF_LOCKED ; 
 int KPF_LRU ; 
 int KPF_MAPPEDTODISK ; 
 int KPF_MLOCKED ; 
 int KPF_MMAP ; 
 int KPF_NOPAGE ; 
 int KPF_OFFLINE ; 
 int KPF_OWNER_PRIVATE ; 
 int KPF_PGTABLE ; 
 int KPF_PRIVATE ; 
 int KPF_PRIVATE_2 ; 
 int KPF_RECLAIM ; 
 int KPF_REFERENCED ; 
 int KPF_RESERVED ; 
 int KPF_SLAB ; 
 int KPF_SWAPBACKED ; 
 int KPF_SWAPCACHE ; 
 int KPF_THP ; 
 int KPF_UNCACHED ; 
 int KPF_UNEVICTABLE ; 
 int KPF_UPTODATE ; 
 int KPF_WRITEBACK ; 
 int KPF_ZERO_PAGE ; 
 int /*<<< orphan*/  PG_active ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int /*<<< orphan*/  PG_dirty ; 
 int /*<<< orphan*/  PG_error ; 
 int /*<<< orphan*/  PG_hwpoison ; 
 int /*<<< orphan*/  PG_locked ; 
 int /*<<< orphan*/  PG_lru ; 
 int /*<<< orphan*/  PG_mappedtodisk ; 
 int /*<<< orphan*/  PG_mlocked ; 
 int /*<<< orphan*/  PG_owner_priv_1 ; 
 int /*<<< orphan*/  PG_private ; 
 int /*<<< orphan*/  PG_private_2 ; 
 int /*<<< orphan*/  PG_reclaim ; 
 int /*<<< orphan*/  PG_referenced ; 
 int /*<<< orphan*/  PG_reserved ; 
 int /*<<< orphan*/  PG_slab ; 
 int /*<<< orphan*/  PG_swapbacked ; 
 int /*<<< orphan*/  PG_uncached ; 
 int /*<<< orphan*/  PG_unevictable ; 
 int /*<<< orphan*/  PG_uptodate ; 
 int /*<<< orphan*/  PG_writeback ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 struct page* FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct page*) ; 
 scalar_t__ FUNC18 (struct page*) ; 
 scalar_t__ FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 

u64 FUNC21(struct page *page)
{
	u64 k;
	u64 u;

	/*
	 * pseudo flag: KPF_NOPAGE
	 * it differentiates a memory hole from a page with no flags
	 */
	if (!page)
		return 1 << KPF_NOPAGE;

	k = page->flags;
	u = 0;

	/*
	 * pseudo flags for the well known (anonymous) memory mapped pages
	 *
	 * Note that page->_mapcount is overloaded in SLOB/SLUB/SLQB, so the
	 * simple test in page_mapped() is not enough.
	 */
	if (!FUNC7(page) && FUNC19(page))
		u |= 1 << KPF_MMAP;
	if (FUNC0(page))
		u |= 1 << KPF_ANON;
	if (FUNC4(page))
		u |= 1 << KPF_KSM;

	/*
	 * compound pages: export both head/tail info
	 * they together define a compound page's start/end pos and order
	 */
	if (FUNC2(page))
		u |= 1 << KPF_COMPOUND_HEAD;
	if (FUNC10(page))
		u |= 1 << KPF_COMPOUND_TAIL;
	if (FUNC3(page))
		u |= 1 << KPF_HUGE;
	/*
	 * PageTransCompound can be true for non-huge compound pages (slab
	 * pages or pages allocated by drivers with __GFP_COMP) because it
	 * just checks PG_head/PG_tail, so we need to check PageLRU/PageAnon
	 * to make sure a given page is a thp, not a non-huge compound page.
	 */
	else if (FUNC11(page)) {
		struct page *head = FUNC12(page);

		if (FUNC5(head) || FUNC0(head))
			u |= 1 << KPF_THP;
		else if (FUNC14(head)) {
			u |= 1 << KPF_ZERO_PAGE;
			u |= 1 << KPF_THP;
		}
	} else if (FUNC15(FUNC20(page)))
		u |= 1 << KPF_ZERO_PAGE;


	/*
	 * Caveats on high order pages: page->_refcount will only be set
	 * -1 on the head page; SLUB/SLQB do the same for PG_slab;
	 * SLOB won't set PG_slab at all on compound pages.
	 */
	if (FUNC1(page))
		u |= 1 << KPF_BUDDY;
	else if (FUNC17(page) == 0 && FUNC13(page))
		u |= 1 << KPF_BUDDY;

	if (FUNC6(page))
		u |= 1 << KPF_OFFLINE;
	if (FUNC9(page))
		u |= 1 << KPF_PGTABLE;

	if (FUNC18(page))
		u |= 1 << KPF_IDLE;

	u |= FUNC16(k, KPF_LOCKED,	PG_locked);

	u |= FUNC16(k, KPF_SLAB,		PG_slab);
	if (FUNC10(page) && FUNC7(FUNC12(page)))
		u |= 1 << KPF_SLAB;

	u |= FUNC16(k, KPF_ERROR,		PG_error);
	u |= FUNC16(k, KPF_DIRTY,		PG_dirty);
	u |= FUNC16(k, KPF_UPTODATE,	PG_uptodate);
	u |= FUNC16(k, KPF_WRITEBACK,	PG_writeback);

	u |= FUNC16(k, KPF_LRU,		PG_lru);
	u |= FUNC16(k, KPF_REFERENCED,	PG_referenced);
	u |= FUNC16(k, KPF_ACTIVE,	PG_active);
	u |= FUNC16(k, KPF_RECLAIM,	PG_reclaim);

	if (FUNC8(page))
		u |= 1 << KPF_SWAPCACHE;
	u |= FUNC16(k, KPF_SWAPBACKED,	PG_swapbacked);

	u |= FUNC16(k, KPF_UNEVICTABLE,	PG_unevictable);
	u |= FUNC16(k, KPF_MLOCKED,	PG_mlocked);

#ifdef CONFIG_MEMORY_FAILURE
	u |= kpf_copy_bit(k, KPF_HWPOISON,	PG_hwpoison);
#endif

#ifdef CONFIG_ARCH_USES_PG_UNCACHED
	u |= kpf_copy_bit(k, KPF_UNCACHED,	PG_uncached);
#endif

	u |= FUNC16(k, KPF_RESERVED,	PG_reserved);
	u |= FUNC16(k, KPF_MAPPEDTODISK,	PG_mappedtodisk);
	u |= FUNC16(k, KPF_PRIVATE,	PG_private);
	u |= FUNC16(k, KPF_PRIVATE_2,	PG_private_2);
	u |= FUNC16(k, KPF_OWNER_PRIVATE,	PG_owner_priv_1);
	u |= FUNC16(k, KPF_ARCH,		PG_arch_1);

	return u;
}