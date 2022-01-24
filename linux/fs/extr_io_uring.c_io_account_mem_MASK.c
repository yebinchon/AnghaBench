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
struct user_struct {int /*<<< orphan*/  locked_vm; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct user_struct *user, unsigned long nr_pages)
{
	unsigned long page_limit, cur_pages, new_pages;

	/* Don't allow more pages than we can safely lock */
	page_limit = FUNC2(RLIMIT_MEMLOCK) >> PAGE_SHIFT;

	do {
		cur_pages = FUNC1(&user->locked_vm);
		new_pages = cur_pages + nr_pages;
		if (new_pages > page_limit)
			return -ENOMEM;
	} while (FUNC0(&user->locked_vm, cur_pages,
					new_pages) != cur_pages);

	return 0;
}