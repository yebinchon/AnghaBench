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
struct nfs4_client {int /*<<< orphan*/  cl_rpc_users; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  expiry_wq ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_client*) ; 
 struct nfsd_net* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfs4_client *clp)
{
	struct nfsd_net *nn = FUNC2(clp->net, nfsd_net_id);

	if (!FUNC0(&clp->cl_rpc_users, &nn->client_lock))
		return;
	if (!FUNC1(clp))
		FUNC3(clp);
	else
		FUNC5(&expiry_wq);
	FUNC4(&nn->client_lock);
}