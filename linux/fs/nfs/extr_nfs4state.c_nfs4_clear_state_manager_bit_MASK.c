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
struct nfs_client {int /*<<< orphan*/  cl_rpcwaitq; int /*<<< orphan*/  cl_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4CLNT_MANAGER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nfs_client *clp)
{
	FUNC3();
	FUNC0(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state);
	FUNC2();
	FUNC4(&clp->cl_state, NFS4CLNT_MANAGER_RUNNING);
	FUNC1(&clp->cl_rpcwaitq);
}