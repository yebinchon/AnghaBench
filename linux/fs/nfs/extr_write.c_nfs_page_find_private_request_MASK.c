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
struct nfs_page {int /*<<< orphan*/  wb_kref; struct nfs_page* wb_head; } ;
struct address_space {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfs_page* FUNC3 (struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_page *
FUNC7(struct page *page)
{
	struct address_space *mapping = FUNC4(page);
	struct nfs_page *req;

	if (!FUNC0(page))
		return NULL;
	FUNC5(&mapping->private_lock);
	req = FUNC3(page);
	if (req) {
		FUNC1(req->wb_head != req);
		FUNC2(&req->wb_kref);
	}
	FUNC6(&mapping->private_lock);
	return req;
}