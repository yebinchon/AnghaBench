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
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfs4_client {int /*<<< orphan*/ * cl_nfsd_dentry; int /*<<< orphan*/  cl_lru; int /*<<< orphan*/  cl_rpc_users; int /*<<< orphan*/  cl_lock; scalar_t__ cl_time; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_client*) ; 
 int /*<<< orphan*/  expiry_wq ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct nfs4_client *clp)
{
	struct nfsd_net *nn = FUNC3(clp->net, nfsd_net_id);
	bool already_expired;

	FUNC4(&clp->cl_lock);
	clp->cl_time = 0;
	FUNC5(&clp->cl_lock);

	FUNC7(expiry_wq, FUNC0(&clp->cl_rpc_users) == 0);
	FUNC4(&nn->client_lock);
	already_expired = FUNC2(&clp->cl_lru);
	if (!already_expired)
		FUNC6(clp);
	FUNC5(&nn->client_lock);

	if (!already_expired)
		FUNC1(clp);
	else
		FUNC7(expiry_wq, clp->cl_nfsd_dentry == NULL);
}