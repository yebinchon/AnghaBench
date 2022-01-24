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

/* Variables and functions */
 unsigned long BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MIGRATE_TYPES ; 
 int NR_PAGEBLOCK_BITS ; 
 int PB_migratetype_bits ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 unsigned long FUNC3 (unsigned long*,unsigned long,unsigned long) ; 
 unsigned long* FUNC4 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 unsigned long FUNC6 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC8(struct page *page, unsigned long flags,
					unsigned long pfn,
					unsigned long end_bitidx,
					unsigned long mask)
{
	unsigned long *bitmap;
	unsigned long bitidx, word_bitidx;
	unsigned long old_word, word;

	FUNC0(NR_PAGEBLOCK_BITS != 4);
	FUNC0(MIGRATE_TYPES > (1 << PB_migratetype_bits));

	bitmap = FUNC4(page, pfn);
	bitidx = FUNC6(page, pfn);
	word_bitidx = bitidx / BITS_PER_LONG;
	bitidx &= (BITS_PER_LONG-1);

	FUNC2(!FUNC7(FUNC5(page), pfn), page);

	bitidx += end_bitidx;
	mask <<= (BITS_PER_LONG - bitidx - 1);
	flags <<= (BITS_PER_LONG - bitidx - 1);

	word = FUNC1(bitmap[word_bitidx]);
	for (;;) {
		old_word = FUNC3(&bitmap[word_bitidx], word, (word & ~mask) | flags);
		if (word == old_word)
			break;
		word = old_word;
	}
}