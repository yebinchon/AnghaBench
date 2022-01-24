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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,int) ; 
 struct address_space* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

void FUNC7(struct page *page, bool is_write, int err)
{
	if (!is_write) {
		if (!err) {
			FUNC2(page);
		} else {
			FUNC0(page);
			FUNC1(page);
		}
		FUNC6(page);
	} else {
		if (err) {
			struct address_space *mapping;

			FUNC1(page);
			mapping = FUNC5(page);
			if (mapping)
				FUNC4(mapping, err);
		}
		FUNC3(page);
	}
}