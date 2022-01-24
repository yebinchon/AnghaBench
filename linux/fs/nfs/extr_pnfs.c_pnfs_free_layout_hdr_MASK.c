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
struct pnfs_layoutdriver_type {void (* free_layout_hdr ) (struct pnfs_layout_hdr*) ;} ;
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_lc_cred; int /*<<< orphan*/  plh_layouts; int /*<<< orphan*/  plh_inode; } ;
struct nfs_server {struct nfs_client* nfs_client; struct pnfs_layoutdriver_type* pnfs_curr_ld; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void FUNC6 (struct pnfs_layout_hdr*) ; 

__attribute__((used)) static void
FUNC7(struct pnfs_layout_hdr *lo)
{
	struct nfs_server *server = FUNC0(lo->plh_inode);
	struct pnfs_layoutdriver_type *ld = server->pnfs_curr_ld;

	if (!FUNC2(&lo->plh_layouts)) {
		struct nfs_client *clp = server->nfs_client;

		FUNC4(&clp->cl_lock);
		FUNC1(&lo->plh_layouts);
		FUNC5(&clp->cl_lock);
	}
	FUNC3(lo->plh_lc_cred);
	return ld->free_layout_hdr(lo);
}