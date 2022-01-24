#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct nfs_page {int /*<<< orphan*/  wb_bytes; struct page* wb_page; } ;
struct inode {TYPE_1__* i_sb; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PG_UNLOCKPAGE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*,struct page*) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct nfs_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_page*) ; 
 TYPE_2__* FUNC12 (struct nfs_page*) ; 
 struct address_space* FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

__attribute__((used)) static void FUNC16(struct nfs_page *req, int error)
{
	struct inode *inode = FUNC5(FUNC12(req)->dentry);
	struct page *page = req->wb_page;

	FUNC6("NFS: read done (%s/%llu %d@%lld)\n", inode->i_sb->s_id,
		(unsigned long long)FUNC0(inode), req->wb_bytes,
		(long long)FUNC14(req));

	if (FUNC8(error) && error != -ETIMEDOUT)
		FUNC4(page);
	if (FUNC9(req, PG_UNLOCKPAGE)) {
		struct address_space *mapping = FUNC13(page);

		if (FUNC3(page))
			FUNC10(inode, page, 0);
		else if (!FUNC1(page) && !FUNC2(page))
			FUNC7(mapping, page);
		FUNC15(page);
	}
	FUNC11(req);
}