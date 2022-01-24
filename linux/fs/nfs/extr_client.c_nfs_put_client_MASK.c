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
struct nfs_net {int /*<<< orphan*/  nfs_client_lock; } ;
struct nfs_client {TYPE_1__* rpc_ops; int /*<<< orphan*/  cl_superblocks; int /*<<< orphan*/  cl_share_link; int /*<<< orphan*/  cl_count; int /*<<< orphan*/  cl_net; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_client ) (struct nfs_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfs_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_client*) ; 
 int /*<<< orphan*/  nfs_net_id ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_client*) ; 

void FUNC8(struct nfs_client *clp)
{
	struct nfs_net *nn;

	if (!clp)
		return;

	nn = FUNC3(clp->cl_net, nfs_net_id);

	if (FUNC5(&clp->cl_count, &nn->nfs_client_lock)) {
		FUNC1(&clp->cl_share_link);
		FUNC4(clp);
		FUNC6(&nn->nfs_client_lock);

		FUNC0(!FUNC2(&clp->cl_superblocks));

		clp->rpc_ops->free_client(clp);
	}
}