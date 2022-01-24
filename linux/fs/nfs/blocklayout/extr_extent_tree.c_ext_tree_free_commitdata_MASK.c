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
struct nfs4_layoutcommit_args {int /*<<< orphan*/  layoutupdate_page; int /*<<< orphan*/ * layoutupdate_pages; int /*<<< orphan*/  start_p; } ;

/* Variables and functions */
 int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nfs4_layoutcommit_args *arg,
		size_t buffer_size)
{
	if (arg->layoutupdate_pages != &arg->layoutupdate_page) {
		int nr_pages = FUNC0(buffer_size, PAGE_SIZE), i;

		for (i = 0; i < nr_pages; i++)
			FUNC2(arg->layoutupdate_pages[i]);
		FUNC3(arg->start_p);
		FUNC1(arg->layoutupdate_pages);
	} else {
		FUNC2(arg->layoutupdate_page);
	}
}