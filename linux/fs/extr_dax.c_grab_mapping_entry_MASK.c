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
struct xa_state {unsigned long xa_index; scalar_t__ xa_node; } ;
struct address_space {int /*<<< orphan*/  nrexceptional; } ;

/* Variables and functions */
 unsigned long DAX_EMPTY ; 
 unsigned long DAX_PMD ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int PG_PMD_COLOUR ; 
 int /*<<< orphan*/  PG_PMD_NR ; 
 int /*<<< orphan*/  VM_FAULT_FALLBACK ; 
 int /*<<< orphan*/  VM_FAULT_OOM ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int __GFP_HIGHMEM ; 
 int /*<<< orphan*/  FUNC1 (void*,struct address_space*,int) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct xa_state*,void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct xa_state*,void*,int) ; 
 void* FUNC9 (struct xa_state*,unsigned int) ; 
 int FUNC10 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct address_space*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct xa_state*) ; 
 scalar_t__ FUNC17 (struct xa_state*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC19 (struct xa_state*,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct xa_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct xa_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct xa_state*) ; 

__attribute__((used)) static void *FUNC23(struct xa_state *xas,
		struct address_space *mapping, unsigned int order)
{
	unsigned long index = xas->xa_index;
	bool pmd_downgrade = false; /* splitting PMD entry into PTE entries? */
	void *entry;

retry:
	FUNC16(xas);
	entry = FUNC9(xas, order);

	if (entry) {
		if (FUNC2(entry))
			goto fallback;
		if (!FUNC13(entry)) {
			FUNC20(xas, EIO);
			goto out_unlock;
		}

		if (order == 0) {
			if (FUNC4(entry) &&
			    (FUNC5(entry) ||
			     FUNC3(entry))) {
				pmd_downgrade = true;
			}
		}
	}

	if (pmd_downgrade) {
		/*
		 * Make sure 'entry' remains valid while we drop
		 * the i_pages lock.
		 */
		FUNC6(xas, entry);

		/*
		 * Besides huge zero pages the only other thing that gets
		 * downgraded are empty entries which don't need to be
		 * unmapped.
		 */
		if (FUNC5(entry)) {
			FUNC22(xas);
			FUNC12(mapping,
					xas->xa_index & ~PG_PMD_COLOUR,
					PG_PMD_NR, false);
			FUNC18(xas);
			FUNC16(xas);
		}

		FUNC1(entry, mapping, false);
		FUNC21(xas, NULL);	/* undo the PMD join */
		FUNC8(xas, entry, true);
		mapping->nrexceptional--;
		entry = NULL;
		FUNC19(xas, index);
	}

	if (entry) {
		FUNC6(xas, entry);
	} else {
		unsigned long flags = DAX_EMPTY;

		if (order > 0)
			flags |= DAX_PMD;
		entry = FUNC7(FUNC11(0), flags);
		FUNC6(xas, entry);
		if (FUNC15(xas))
			goto out_unlock;
		mapping->nrexceptional++;
	}

out_unlock:
	FUNC22(xas);
	if (FUNC17(xas, FUNC10(mapping) & ~__GFP_HIGHMEM))
		goto retry;
	if (xas->xa_node == FUNC0(-ENOMEM))
		return FUNC14(VM_FAULT_OOM);
	if (FUNC15(xas))
		return FUNC14(VM_FAULT_SIGBUS);
	return entry;
fallback:
	FUNC22(xas);
	return FUNC14(VM_FAULT_FALLBACK);
}