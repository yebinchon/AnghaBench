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
struct xa_state {unsigned long xa_index; } ;
struct vm_fault {int /*<<< orphan*/  address; int /*<<< orphan*/  vma; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 int DAX_LOCKED ; 
 unsigned long DAX_ZERO_PAGE ; 
 int /*<<< orphan*/  I_DIRTY_PAGES ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 unsigned long PG_PMD_COLOUR ; 
 int PG_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct address_space*,int) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 void* FUNC7 (struct xa_state*,void*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*,unsigned long,int,int) ; 
 void* FUNC10 (int) ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct xa_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct xa_state*) ; 

__attribute__((used)) static void *FUNC17(struct xa_state *xas,
		struct address_space *mapping, struct vm_fault *vmf,
		void *entry, pfn_t pfn, unsigned long flags, bool dirty)
{
	void *new_entry = FUNC8(pfn, flags);

	if (dirty)
		FUNC1(mapping->host, I_DIRTY_PAGES);

	if (FUNC6(entry) && !(flags & DAX_ZERO_PAGE)) {
		unsigned long index = xas->xa_index;
		/* we are replacing a zero page with block mapping */
		if (FUNC5(entry))
			FUNC9(mapping, index & ~PG_PMD_COLOUR,
					PG_PMD_NR, false);
		else /* pte entry */
			FUNC9(mapping, index, 1, false);
	}

	FUNC14(xas);
	FUNC13(xas);
	if (FUNC6(entry) || FUNC4(entry)) {
		void *old;

		FUNC3(entry, mapping, false);
		FUNC2(new_entry, mapping, vmf->vma, vmf->address);
		/*
		 * Only swap our new entry into the page cache if the current
		 * entry is a zero page or an empty entry.  If a normal PTE or
		 * PMD entry is already in the cache, we leave it alone.  This
		 * means that if we are trying to insert a PTE and the
		 * existing entry is a PMD, we will just leave the PMD in the
		 * tree and dirty it if necessary.
		 */
		old = FUNC7(xas, new_entry);
		FUNC0(old != FUNC10(FUNC11(entry) |
					DAX_LOCKED));
		entry = new_entry;
	} else {
		FUNC12(xas);	/* Walk the xa_state */
	}

	if (dirty)
		FUNC15(xas, PAGECACHE_TAG_DIRTY);

	FUNC16(xas);
	return entry;
}