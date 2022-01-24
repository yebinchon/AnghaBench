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
struct nfs_page {int /*<<< orphan*/  wb_kref; struct nfs_page* wb_head; } ;
struct nfs_inode {int /*<<< orphan*/  commit_mutex; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nfs_page* FUNC6 (struct nfs_inode*,struct page*) ; 
 TYPE_1__* FUNC7 (struct page*) ; 

__attribute__((used)) static struct nfs_page *
FUNC8(struct page *page)
{
	struct inode *inode = FUNC7(page)->host;
	struct nfs_inode *nfsi = FUNC0(inode);
	struct nfs_page *req = NULL;
	if (!FUNC1(page))
		return NULL;
	FUNC4(&nfsi->commit_mutex);
	if (FUNC1(page)) {
		req = FUNC6(nfsi,
			page);
		if (req) {
			FUNC2(req->wb_head != req);
			FUNC3(&req->wb_kref);
		}
	}
	FUNC5(&nfsi->commit_mutex);
	return req;
}