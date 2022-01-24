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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct page {int dummy; } ;
struct fscache_cookie {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fscache_cookie*,struct page*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_page_write_wait ; 
 int /*<<< orphan*/  FUNC2 (struct fscache_cookie*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct fscache_cookie *cookie, struct page *page)
{
	wait_queue_head_t *wq = FUNC1(&cookie->flags, 0);

	FUNC2(cookie, page, fscache_page_write_wait);

	FUNC3(*wq, !FUNC0(cookie, page));
}