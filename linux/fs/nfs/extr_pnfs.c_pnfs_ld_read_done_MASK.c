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
struct nfs_pgio_header {TYPE_1__* mds_ops; int /*<<< orphan*/  pnfs_error; int /*<<< orphan*/  task; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rpc_release ) (struct nfs_pgio_header*) ;int /*<<< orphan*/  (* rpc_call_done ) (int /*<<< orphan*/ *,struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct nfs_pgio_header *hdr)
{
	if (FUNC0(!hdr->pnfs_error))
		hdr->mds_ops->rpc_call_done(&hdr->task, hdr);
	FUNC4(hdr, hdr->pnfs_error);
	if (FUNC5(hdr->pnfs_error))
		FUNC1(hdr);
	hdr->mds_ops->rpc_release(hdr);
}