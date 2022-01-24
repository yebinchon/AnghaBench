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
struct nfs_page {int /*<<< orphan*/  wb_flags; scalar_t__ wb_page; struct nfs_page* wb_head; } ;
struct nfs_inode {int /*<<< orphan*/  nrequests; } ;
struct inode {int dummy; } ;
struct address_space {int /*<<< orphan*/  private_lock; struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  PG_INODE_REF ; 
 int /*<<< orphan*/  PG_MAPPED ; 
 int /*<<< orphan*/  PG_REMOVE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct nfs_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*) ; 
 struct address_space* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct nfs_page *req)
{
	struct address_space *mapping = FUNC8(req->wb_page);
	struct inode *inode = mapping->host;
	struct nfs_inode *nfsi = FUNC1(inode);
	struct nfs_page *head;

	if (FUNC6(req, PG_REMOVE)) {
		head = req->wb_head;

		FUNC10(&mapping->private_lock);
		if (FUNC5(head->wb_page && !FUNC2(head->wb_page))) {
			FUNC9(head->wb_page, 0);
			FUNC0(head->wb_page);
			FUNC4(PG_MAPPED, &head->wb_flags);
		}
		FUNC11(&mapping->private_lock);
	}

	if (FUNC12(PG_INODE_REF, &req->wb_flags)) {
		FUNC7(req);
		FUNC3(&nfsi->nrequests);
	}
}