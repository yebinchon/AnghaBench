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
struct TYPE_2__ {int /*<<< orphan*/  tk_status; } ;
struct nfs_pgio_header {TYPE_1__ task; int /*<<< orphan*/  completion_ops; int /*<<< orphan*/  inode; int /*<<< orphan*/ * lseg; int /*<<< orphan*/  flags; } ;
struct nfs_pageio_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct nfs_pgio_header *hdr)
{
	struct nfs_pageio_descriptor pgio;

	if (!FUNC3(NFS_IOHDR_REDO, &hdr->flags)) {
		/* Prevent deadlocks with layoutreturn! */
		FUNC2(hdr->lseg);
		hdr->lseg = NULL;

		FUNC0(&pgio, hdr->inode, false,
					hdr->completion_ops);
		hdr->task.tk_status = FUNC1(&pgio, hdr);
	}
}