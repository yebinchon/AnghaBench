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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct page** FUNC0 (int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page**,int) ; 
 struct page** FUNC3 (int,int,int /*<<< orphan*/ ) ; 

struct page **FUNC4(int num_pages, gfp_t flags)
{
	struct page **pages;
	int i;

	pages = FUNC3(num_pages, sizeof(*pages), flags);
	if (!pages)
		return FUNC0(-ENOMEM);
	for (i = 0; i < num_pages; i++) {
		pages[i] = FUNC1(flags);
		if (pages[i] == NULL) {
			FUNC2(pages, i);
			return FUNC0(-ENOMEM);
		}
	}
	return pages;
}