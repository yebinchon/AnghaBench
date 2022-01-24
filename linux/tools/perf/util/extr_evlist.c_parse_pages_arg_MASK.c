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
struct parse_tag {char tag; int mult; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 long EINVAL ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long page_size ; 
 unsigned long FUNC2 (char const*,struct parse_tag*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 
 unsigned long FUNC5 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned long) ; 

__attribute__((used)) static long FUNC7(const char *str, unsigned long min,
			    unsigned long max)
{
	unsigned long pages, val;
	static struct parse_tag tags[] = {
		{ .tag  = 'B', .mult = 1       },
		{ .tag  = 'K', .mult = 1 << 10 },
		{ .tag  = 'M', .mult = 1 << 20 },
		{ .tag  = 'G', .mult = 1 << 30 },
		{ .tag  = 0 },
	};

	if (str == NULL)
		return -EINVAL;

	val = FUNC2(str, tags);
	if (val != (unsigned long) -1) {
		/* we got file size value */
		pages = FUNC0(val, page_size) / page_size;
	} else {
		/* we got pages count value */
		char *eptr;
		pages = FUNC5(str, &eptr, 10);
		if (*eptr != '\0')
			return -EINVAL;
	}

	if (pages == 0 && min == 0) {
		/* leave number of pages at 0 */
	} else if (!FUNC1(pages)) {
		char buf[100];

		/* round pages up to next power of 2 */
		pages = FUNC4(pages);
		if (!pages)
			return -EINVAL;

		FUNC6(buf, sizeof(buf), pages * page_size);
		FUNC3("rounding mmap pages size to %s (%lu pages)\n",
			buf, pages);
	}

	if (pages > max)
		return -EINVAL;

	return pages;
}