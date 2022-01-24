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
struct pagevec {int /*<<< orphan*/ * pages; } ;
struct address_space {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct address_space*,struct pagevec*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct address_space *mapping,
				  struct pagevec *pvec)
{
	int i;
	unsigned long flags;

	if (!FUNC2(pvec))
		return;

	FUNC5(&mapping->i_pages, flags);
	for (i = 0; i < FUNC2(pvec); i++) {
		FUNC3(pvec->pages[i]);

		FUNC4(mapping, pvec->pages[i]);
	}
	FUNC0(mapping, pvec);
	FUNC6(&mapping->i_pages, flags);

	for (i = 0; i < FUNC2(pvec); i++)
		FUNC1(mapping, pvec->pages[i]);
}