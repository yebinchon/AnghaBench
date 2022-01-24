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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct page*) ; 
 struct page* FUNC2 (struct page*,struct page*,int) ; 

__attribute__((used)) static void FUNC3(struct page *dst, struct page *src,
				int nr_pages)
{
	int i;
	struct page *dst_base = dst;
	struct page *src_base = src;

	for (i = 0; i < nr_pages; ) {
		FUNC0();
		FUNC1(dst, src);

		i++;
		dst = FUNC2(dst, dst_base, i);
		src = FUNC2(src, src_base, i);
	}
}