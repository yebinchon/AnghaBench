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
struct dax_device {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGECACHE_TAG_TOWRITE ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct dax_device*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct xa_state*,void*) ; 
 scalar_t__ FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (struct xa_state*,void*,int) ; 
 void* FUNC11 (struct xa_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct xa_state*,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (struct xa_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct xa_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC21 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC22 (struct xa_state*,void*) ; 
 int /*<<< orphan*/  FUNC23 (struct xa_state*) ; 

__attribute__((used)) static int FUNC24(struct xa_state *xas, struct dax_device *dax_dev,
		struct address_space *mapping, void *entry)
{
	unsigned long pfn, index, count;
	long ret = 0;

	/*
	 * A page got tagged dirty in DAX mapping? Something is seriously
	 * wrong.
	 */
	if (FUNC0(!FUNC17(entry)))
		return -EIO;

	if (FUNC16(FUNC6(entry))) {
		void *old_entry = entry;

		entry = FUNC11(xas, 0);

		/* Entry got punched out / reallocated? */
		if (!entry || FUNC1(!FUNC17(entry)))
			goto put_unlocked;
		/*
		 * Entry got reallocated elsewhere? No need to writeback.
		 * We have to compare pfns as we must not bail out due to
		 * difference in lockbit or entry type.
		 */
		if (FUNC9(old_entry) != FUNC9(entry))
			goto put_unlocked;
		if (FUNC1(FUNC5(entry) ||
					FUNC7(entry))) {
			ret = -EIO;
			goto put_unlocked;
		}

		/* Another fsync thread may have already done this entry */
		if (!FUNC19(xas, PAGECACHE_TAG_TOWRITE))
			goto put_unlocked;
	}

	/* Lock the entry to serialize with page faults */
	FUNC8(xas, entry);

	/*
	 * We can clear the tag now but we have to be careful so that concurrent
	 * dax_writeback_one() calls for the same index cannot finish before we
	 * actually flush the caches. This is achieved as the calls will look
	 * at the entry only under the i_pages lock and once they do that
	 * they will see the entry locked and wait for it to unlock.
	 */
	FUNC18(xas, PAGECACHE_TAG_TOWRITE);
	FUNC23(xas);

	/*
	 * If dax_writeback_mapping_range() was given a wbc->range_start
	 * in the middle of a PMD, the 'index' we use needs to be
	 * aligned to the start of the PMD.
	 * This allows us to flush for PMD_SIZE and not have to worry about
	 * partial PMD writebacks.
	 */
	pfn = FUNC9(entry);
	count = 1UL << FUNC3(entry);
	index = xas->xa_index & ~(count - 1);

	FUNC2(mapping, index, pfn);
	FUNC4(dax_dev, FUNC12(FUNC13(pfn)), count * PAGE_SIZE);
	/*
	 * After we have flushed the cache, we can clear the dirty tag. There
	 * cannot be new dirty data in the pfn after the flush has completed as
	 * the pfn mappings are writeprotected and fault waits for mapping
	 * entry lock.
	 */
	FUNC21(xas);
	FUNC20(xas);
	FUNC22(xas, entry);
	FUNC18(xas, PAGECACHE_TAG_DIRTY);
	FUNC10(xas, entry, false);

	FUNC15(mapping->host, index, count);
	return ret;

 put_unlocked:
	FUNC14(xas, entry);
	return ret;
}