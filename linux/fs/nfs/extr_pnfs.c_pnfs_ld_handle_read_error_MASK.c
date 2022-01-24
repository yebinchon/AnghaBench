#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tk_status; } ;
struct nfs_pgio_header {TYPE_2__ task; int /*<<< orphan*/  flags; int /*<<< orphan*/  inode; int /*<<< orphan*/  pnfs_error; } ;
struct TYPE_6__ {TYPE_1__* pnfs_curr_ld; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int PNFS_LAYOUTRET_ON_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nfs_pgio_header *hdr)
{
	FUNC1("pnfs read error = %d\n", hdr->pnfs_error);
	if (FUNC0(hdr->inode)->pnfs_curr_ld->flags &
	    PNFS_LAYOUTRET_ON_ERROR) {
		FUNC3(hdr->inode);
	}
	if (!FUNC4(NFS_IOHDR_REDO, &hdr->flags))
		hdr->task.tk_status = FUNC2(hdr);
}