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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct hfsplus_sb_info {int free_blocks; int /*<<< orphan*/  alloc_mutex; TYPE_1__* alloc_file; } ;
struct address_space {int dummy; } ;
typedef  int __be32 ;
struct TYPE_2__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP ; 
 struct hfsplus_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int PAGE_CACHE_BITS ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct page* FUNC11 (struct address_space*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

int FUNC13(struct super_block *sb, u32 size,
		u32 offset, u32 *max)
{
	struct hfsplus_sb_info *sbi = FUNC0(sb);
	struct page *page;
	struct address_space *mapping;
	__be32 *pptr, *curr, *end;
	u32 mask, start, len, n;
	__be32 val;
	int i;

	len = *max;
	if (!len)
		return size;

	FUNC4(BITMAP, "block_allocate: %u,%u,%u\n", size, offset, len);
	FUNC9(&sbi->alloc_mutex);
	mapping = sbi->alloc_file->i_mapping;
	page = FUNC11(mapping, offset / PAGE_CACHE_BITS, NULL);
	if (FUNC1(page)) {
		start = size;
		goto out;
	}
	pptr = FUNC6(page);
	curr = pptr + (offset & (PAGE_CACHE_BITS - 1)) / 32;
	i = offset % 32;
	offset &= ~(PAGE_CACHE_BITS - 1);
	if ((size ^ offset) / PAGE_CACHE_BITS)
		end = pptr + PAGE_CACHE_BITS / 32;
	else
		end = pptr + ((size + 31) & (PAGE_CACHE_BITS - 1)) / 32;

	/* scan the first partial u32 for zero bits */
	val = *curr;
	if (~val) {
		n = FUNC2(val);
		mask = (1U << 31) >> i;
		for (; i < 32; mask >>= 1, i++) {
			if (!(n & mask))
				goto found;
		}
	}
	curr++;

	/* scan complete u32s for the first zero bit */
	while (1) {
		while (curr < end) {
			val = *curr;
			if (~val) {
				n = FUNC2(val);
				mask = 1 << 31;
				for (i = 0; i < 32; mask >>= 1, i++) {
					if (!(n & mask))
						goto found;
				}
			}
			curr++;
		}
		FUNC7(page);
		offset += PAGE_CACHE_BITS;
		if (offset >= size)
			break;
		page = FUNC11(mapping, offset / PAGE_CACHE_BITS,
					 NULL);
		if (FUNC1(page)) {
			start = size;
			goto out;
		}
		curr = pptr = FUNC6(page);
		if ((size ^ offset) / PAGE_CACHE_BITS)
			end = pptr + PAGE_CACHE_BITS / 32;
		else
			end = pptr + ((size + 31) & (PAGE_CACHE_BITS - 1)) / 32;
	}
	FUNC4(BITMAP, "bitmap full\n");
	start = size;
	goto out;

found:
	start = offset + (curr - pptr) * 32 + i;
	if (start >= size) {
		FUNC4(BITMAP, "bitmap full\n");
		goto out;
	}
	/* do any partial u32 at the start */
	len = FUNC8(size - start, len);
	while (1) {
		n |= mask;
		if (++i >= 32)
			break;
		mask >>= 1;
		if (!--len || n & mask)
			goto done;
	}
	if (!--len)
		goto done;
	*curr++ = FUNC3(n);
	/* do full u32s */
	while (1) {
		while (curr < end) {
			n = FUNC2(*curr);
			if (len < 32)
				goto last;
			if (n) {
				len = 32;
				goto last;
			}
			*curr++ = FUNC3(0xffffffff);
			len -= 32;
		}
		FUNC12(page);
		FUNC7(page);
		offset += PAGE_CACHE_BITS;
		page = FUNC11(mapping, offset / PAGE_CACHE_BITS,
					 NULL);
		if (FUNC1(page)) {
			start = size;
			goto out;
		}
		pptr = FUNC6(page);
		curr = pptr;
		end = pptr + PAGE_CACHE_BITS / 32;
	}
last:
	/* do any partial u32 at end */
	mask = 1U << 31;
	for (i = 0; i < len; i++) {
		if (n & mask)
			break;
		n |= mask;
		mask >>= 1;
	}
done:
	*curr = FUNC3(n);
	FUNC12(page);
	FUNC7(page);
	*max = offset + (curr - pptr) * 32 + i - start;
	sbi->free_blocks -= *max;
	FUNC5(sb);
	FUNC4(BITMAP, "-> %u,%u\n", start, *max);
out:
	FUNC10(&sbi->alloc_mutex);
	return start;
}