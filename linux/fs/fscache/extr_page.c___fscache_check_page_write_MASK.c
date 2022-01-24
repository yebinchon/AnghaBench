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
struct page {int /*<<< orphan*/  index; } ;
struct fscache_cookie {int /*<<< orphan*/  stores; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fscache_cookie*,struct page*,void*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct fscache_cookie *cookie, struct page *page)
{
	void *val;

	FUNC1();
	val = FUNC0(&cookie->stores, page->index);
	FUNC2();
	FUNC3(cookie, page, val, 0);

	return val != NULL;
}