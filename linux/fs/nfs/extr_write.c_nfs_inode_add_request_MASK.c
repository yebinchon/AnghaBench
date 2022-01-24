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
struct nfs_page {int /*<<< orphan*/  wb_kref; int /*<<< orphan*/  wb_flags; int /*<<< orphan*/  wb_page; struct nfs_page* wb_this_page; } ;
struct nfs_inode {int /*<<< orphan*/  nrequests; } ;
struct inode {int dummy; } ;
struct address_space {int /*<<< orphan*/  private_lock; } ;
struct TYPE_2__ {scalar_t__ (* have_delegation ) (struct inode*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_WRITE ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  PG_INODE_REF ; 
 int /*<<< orphan*/  PG_MAPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_page*) ; 
 struct address_space* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct inode *inode, struct nfs_page *req)
{
	struct address_space *mapping = FUNC12(req->wb_page);
	struct nfs_inode *nfsi = FUNC0(inode);

	FUNC5(req->wb_this_page != req);

	/* Lock the request! */
	FUNC11(req);

	/*
	 * Swap-space should not get truncated. Hence no need to plug the race
	 * with invalidate/truncate.
	 */
	FUNC15(&mapping->private_lock);
	if (!FUNC10(inode) &&
	    FUNC1(inode)->have_delegation(inode, FMODE_WRITE))
		FUNC7(inode);
	if (FUNC9(!FUNC2(req->wb_page))) {
		FUNC13(PG_MAPPED, &req->wb_flags);
		FUNC3(req->wb_page);
		FUNC14(req->wb_page, (unsigned long)req);
	}
	FUNC16(&mapping->private_lock);
	FUNC6(&nfsi->nrequests);
	/* this a head request for a page group - mark it as having an
	 * extra reference so sub groups can follow suit.
	 * This flag also informs pgio layer when to bump nrequests when
	 * adding subrequests. */
	FUNC4(FUNC18(PG_INODE_REF, &req->wb_flags));
	FUNC8(&req->wb_kref);
}