#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  int pgoff_t ;
struct TYPE_5__ {scalar_t__ nr_clusters; int /*<<< orphan*/  lcnbmp_lock; TYPE_1__* lcnbmp_ino; } ;
typedef  TYPE_2__ ntfs_volume ;
struct TYPE_4__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct page* FUNC7 (struct address_space*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static s64 FUNC9(ntfs_volume *vol)
{
	s64 nr_free = vol->nr_clusters;
	struct address_space *mapping = vol->lcnbmp_ino->i_mapping;
	struct page *page;
	pgoff_t index, max_index;

	FUNC5("Entering.");
	/* Serialize accesses to the cluster bitmap. */
	FUNC2(&vol->lcnbmp_lock);
	/*
	 * Convert the number of bits into bytes rounded up, then convert into
	 * multiples of PAGE_SIZE, rounding up so that if we have one
	 * full and one partial page max_index = 2.
	 */
	max_index = (((vol->nr_clusters + 7) >> 3) + PAGE_SIZE - 1) >>
			PAGE_SHIFT;
	/* Use multiples of 4 bytes, thus max_size is PAGE_SIZE / 4. */
	FUNC5("Reading $Bitmap, max_index = 0x%lx, max_size = 0x%lx.",
			max_index, PAGE_SIZE / 4);
	for (index = 0; index < max_index; index++) {
		unsigned long *kaddr;

		/*
		 * Read the page from page cache, getting it from backing store
		 * if necessary, and increment the use count.
		 */
		page = FUNC7(mapping, index, NULL);
		/* Ignore pages which errored synchronously. */
		if (FUNC0(page)) {
			FUNC5("read_mapping_page() error. Skipping "
					"page (index 0x%lx).", index);
			nr_free -= PAGE_SIZE * 8;
			continue;
		}
		kaddr = FUNC3(page);
		/*
		 * Subtract the number of set bits. If this
		 * is the last page and it is partial we don't really care as
		 * it just means we do a little extra work but it won't affect
		 * the result as all out of range bytes are set to zero by
		 * ntfs_readpage().
		 */
		nr_free -= FUNC1(kaddr,
					PAGE_SIZE * BITS_PER_BYTE);
		FUNC4(kaddr);
		FUNC6(page);
	}
	FUNC5("Finished reading $Bitmap, last index = 0x%lx.", index - 1);
	/*
	 * Fixup for eventual bits outside logical ntfs volume (see function
	 * description above).
	 */
	if (vol->nr_clusters & 63)
		nr_free += 64 - (vol->nr_clusters & 63);
	FUNC8(&vol->lcnbmp_lock);
	/* If errors occurred we may well have gone below zero, fix this. */
	if (nr_free < 0)
		nr_free = 0;
	FUNC5("Exiting.");
	return nr_free;
}