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
struct rpc_task {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct nfs_pgio_header {TYPE_3__* lseg; TYPE_2__ res; TYPE_1__ args; int /*<<< orphan*/  pgio_mirror_idx; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  pls_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_IOHDR_STAT ; 
 int /*<<< orphan*/  NFS_LSEG_LAYOUTRETURN ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rpc_task *task,
		struct nfs_pgio_header *hdr)
{
	if (!FUNC3(NFS_IOHDR_STAT, &hdr->flags))
		return;
	FUNC1(task,
			FUNC0(hdr->lseg, hdr->pgio_mirror_idx),
			hdr->args.count,
			hdr->res.count);
	FUNC2(NFS_LSEG_LAYOUTRETURN, &hdr->lseg->pls_flags);
}