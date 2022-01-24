#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct hfsplus_sb_info {scalar_t__ total_blocks; int /*<<< orphan*/  alloc_mutex; int /*<<< orphan*/  free_blocks; TYPE_1__* alloc_file; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP ; 
 int EIO ; 
 int ENOENT ; 
 struct hfsplus_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ PAGE_CACHE_BITS ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/ * FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 struct page* FUNC11 (struct address_space*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

int FUNC13(struct super_block *sb, u32 offset, u32 count)
{
	struct hfsplus_sb_info *sbi = FUNC0(sb);
	struct page *page;
	struct address_space *mapping;
	__be32 *pptr, *curr, *end;
	u32 mask, len, pnr;
	int i;

	/* is there any actual work to be done? */
	if (!count)
		return 0;

	FUNC4(BITMAP, "block_free: %u,%u\n", offset, count);
	/* are all of the bits in range? */
	if ((offset + count) > sbi->total_blocks)
		return -ENOENT;

	FUNC8(&sbi->alloc_mutex);
	mapping = sbi->alloc_file->i_mapping;
	pnr = offset / PAGE_CACHE_BITS;
	page = FUNC11(mapping, pnr, NULL);
	if (FUNC1(page))
		goto kaboom;
	pptr = FUNC6(page);
	curr = pptr + (offset & (PAGE_CACHE_BITS - 1)) / 32;
	end = pptr + PAGE_CACHE_BITS / 32;
	len = count;

	/* do any partial u32 at the start */
	i = offset % 32;
	if (i) {
		int j = 32 - i;
		mask = 0xffffffffU << j;
		if (j > count) {
			mask |= 0xffffffffU >> (i + count);
			*curr++ &= FUNC3(mask);
			goto out;
		}
		*curr++ &= FUNC3(mask);
		count -= j;
	}

	/* do full u32s */
	while (1) {
		while (curr < end) {
			if (count < 32)
				goto done;
			*curr++ = 0;
			count -= 32;
		}
		if (!count)
			break;
		FUNC12(page);
		FUNC7(page);
		page = FUNC11(mapping, ++pnr, NULL);
		if (FUNC1(page))
			goto kaboom;
		pptr = FUNC6(page);
		curr = pptr;
		end = pptr + PAGE_CACHE_BITS / 32;
	}
done:
	/* do any partial u32 at end */
	if (count) {
		mask = 0xffffffffU >> count;
		*curr &= FUNC3(mask);
	}
out:
	FUNC12(page);
	FUNC7(page);
	sbi->free_blocks += len;
	FUNC5(sb);
	FUNC9(&sbi->alloc_mutex);

	return 0;

kaboom:
	FUNC10("unable to mark blocks free: error %ld\n", FUNC2(page));
	FUNC9(&sbi->alloc_mutex);

	return -EIO;
}