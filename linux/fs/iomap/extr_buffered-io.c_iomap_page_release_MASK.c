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
struct iomap_page {int /*<<< orphan*/  write_count; int /*<<< orphan*/  read_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iomap_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 struct iomap_page* FUNC6 (struct page*) ; 

__attribute__((used)) static void
FUNC7(struct page *page)
{
	struct iomap_page *iop = FUNC6(page);

	if (!iop)
		return;
	FUNC1(FUNC2(&iop->read_count));
	FUNC1(FUNC2(&iop->write_count));
	FUNC0(page);
	FUNC5(page, 0);
	FUNC4(page);
	FUNC3(iop);
}