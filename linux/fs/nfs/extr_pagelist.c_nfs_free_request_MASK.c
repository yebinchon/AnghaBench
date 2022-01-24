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
struct nfs_page {int /*<<< orphan*/  wb_flags; struct nfs_page* wb_this_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_REMOVE ; 
 int /*<<< orphan*/  PG_TEARDOWN ; 
 int /*<<< orphan*/  PG_UNLOCKPAGE ; 
 int /*<<< orphan*/  PG_UPTODATE ; 
 int /*<<< orphan*/  PG_WB_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct nfs_page *req)
{
	FUNC0(req->wb_this_page != req);

	/* extra debug: make sure no sync bits are still set */
	FUNC0(FUNC3(PG_TEARDOWN, &req->wb_flags));
	FUNC0(FUNC3(PG_UNLOCKPAGE, &req->wb_flags));
	FUNC0(FUNC3(PG_UPTODATE, &req->wb_flags));
	FUNC0(FUNC3(PG_WB_END, &req->wb_flags));
	FUNC0(FUNC3(PG_REMOVE, &req->wb_flags));

	/* Release struct file and open context */
	FUNC1(req);
	FUNC2(req);
}