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
 int /*<<< orphan*/  PAGECACHE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct page*) ; 
 int FUNC2 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct page *page, gfp_t gfp)
{
	FUNC1(PAGECACHE, "NFS: release_page(%p)\n", page);

	/* If PagePrivate() is set, then the page is not freeable */
	if (FUNC0(page))
		return 0;
	return FUNC2(page, gfp);
}