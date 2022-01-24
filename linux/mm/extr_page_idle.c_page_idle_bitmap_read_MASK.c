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
typedef  unsigned long long u64 ;
struct page {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 unsigned long BITMAP_CHUNK_BITS ; 
 size_t BITMAP_CHUNK_SIZE ; 
 size_t BITS_PER_BYTE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long max_pfn ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *file, struct kobject *kobj,
				     struct bin_attribute *attr, char *buf,
				     loff_t pos, size_t count)
{
	u64 *out = (u64 *)buf;
	struct page *page;
	unsigned long pfn, end_pfn;
	int bit;

	if (pos % BITMAP_CHUNK_SIZE || count % BITMAP_CHUNK_SIZE)
		return -EINVAL;

	pfn = pos * BITS_PER_BYTE;
	if (pfn >= max_pfn)
		return 0;

	end_pfn = pfn + count * BITS_PER_BYTE;
	if (end_pfn > max_pfn)
		end_pfn = max_pfn;

	for (; pfn < end_pfn; pfn++) {
		bit = pfn % BITMAP_CHUNK_BITS;
		if (!bit)
			*out = 0ULL;
		page = FUNC2(pfn);
		if (page) {
			if (FUNC3(page)) {
				/*
				 * The page might have been referenced via a
				 * pte, in which case it is not idle. Clear
				 * refs and recheck.
				 */
				FUNC1(page);
				if (FUNC3(page))
					*out |= 1ULL << bit;
			}
			FUNC4(page);
		}
		if (bit == BITMAP_CHUNK_BITS - 1)
			out++;
		FUNC0();
	}
	return (char *)out - buf;
}