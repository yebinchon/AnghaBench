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
struct nfs_page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 int FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 struct nfs_page* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

int FUNC6(struct inode *inode, struct page *page)
{
	struct nfs_page *req;
	int ret = 0;

	FUNC5(page);

	/* blocking call to cancel all requests and join to a single (head)
	 * request */
	req = FUNC3(page);

	if (FUNC0(req)) {
		ret = FUNC1(req);
	} else if (req) {
		/* all requests from this page have been cancelled by
		 * nfs_lock_and_join_requests, so just remove the head
		 * request from the inode / page_private pointer and
		 * release it */
		FUNC2(req);
		FUNC4(req);
	}

	return ret;
}