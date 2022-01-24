#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct gfs2_log_header_host {int dummy; } ;
struct gfs2_jdesc {TYPE_1__* jd_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (struct gfs2_jdesc*,struct gfs2_log_header_host*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void FUNC5(struct gfs2_jdesc *jd, unsigned long index,
				    struct gfs2_log_header_host *head,
				    bool *done)
{
	struct page *page;

	page = FUNC1(jd->jd_inode->i_mapping, index);
	FUNC4(page);

	if (FUNC0(page))
		*done = true;

	if (!*done)
		*done = FUNC2(jd, head, page);

	FUNC3(page); /* Once for find_get_page */
	FUNC3(page); /* Once more for find_or_create_page */
}