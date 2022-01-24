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
struct nfs_client {int /*<<< orphan*/  cl_owner_id; int /*<<< orphan*/  cl_implid; int /*<<< orphan*/  cl_serverscope; int /*<<< orphan*/  cl_serverowner; int /*<<< orphan*/  cl_rpcwaitq; int /*<<< orphan*/  cl_res_state; TYPE_1__* cl_mvops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown_client ) (struct nfs_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CS_IDMAP ; 
 int /*<<< orphan*/  NFS_CS_RENEWD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_client*) ; 

__attribute__((used)) static void FUNC7(struct nfs_client *clp)
{
	if (FUNC0(NFS_CS_RENEWD, &clp->cl_res_state))
		FUNC3(clp);
	clp->cl_mvops->shutdown_client(clp);
	FUNC2(clp);
	if (FUNC0(NFS_CS_IDMAP, &clp->cl_res_state))
		FUNC4(clp);

	FUNC5(&clp->cl_rpcwaitq);
	FUNC1(clp->cl_serverowner);
	FUNC1(clp->cl_serverscope);
	FUNC1(clp->cl_implid);
	FUNC1(clp->cl_owner_id);
}