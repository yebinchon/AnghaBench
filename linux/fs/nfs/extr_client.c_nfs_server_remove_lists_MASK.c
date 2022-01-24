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
struct nfs_server {int /*<<< orphan*/  master_link; int /*<<< orphan*/  client_link; struct nfs_client* nfs_client; } ;
struct nfs_net {int /*<<< orphan*/  nfs_client_lock; } ;
struct nfs_client {int /*<<< orphan*/  cl_res_state; int /*<<< orphan*/  cl_superblocks; int /*<<< orphan*/  cl_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CS_STOP_RENEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfs_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_net_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct nfs_server *server)
{
	struct nfs_client *clp = server->nfs_client;
	struct nfs_net *nn;

	if (clp == NULL)
		return;
	nn = FUNC3(clp->cl_net, nfs_net_id);
	FUNC5(&nn->nfs_client_lock);
	FUNC1(&server->client_link);
	if (FUNC2(&clp->cl_superblocks))
		FUNC4(NFS_CS_STOP_RENEW, &clp->cl_res_state);
	FUNC0(&server->master_link);
	FUNC6(&nn->nfs_client_lock);

	FUNC7();
}