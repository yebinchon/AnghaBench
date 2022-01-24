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
struct address_space {int dummy; } ;

/* Variables and functions */
 int MF_DELAYED ; 
 int MF_RECOVERED ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct address_space* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct page*,unsigned long,struct address_space*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct page *p, unsigned long pfn)
{
	int res = 0;
	struct page *hpage = FUNC2(p);
	struct address_space *mapping;

	if (!FUNC1(hpage))
		return MF_DELAYED;

	mapping = FUNC5(hpage);
	if (mapping) {
		res = FUNC7(hpage, pfn, mapping);
	} else {
		FUNC8(hpage);
		/*
		 * migration entry prevents later access on error anonymous
		 * hugepage, so we can free and dissolve it into buddy to
		 * save healthy subpages.
		 */
		if (FUNC0(hpage))
			FUNC6(hpage);
		FUNC3(p);
		res = MF_RECOVERED;
		FUNC4(hpage);
	}

	return res;
}