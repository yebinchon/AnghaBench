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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  nfserr_expired ; 

__attribute__((used)) static __be32 FUNC4(struct nfs4_client *clp)
{
	struct nfsd_net *nn = FUNC3(clp->net, nfsd_net_id);

	FUNC2(&nn->client_lock);

	if (FUNC1(clp))
		return nfserr_expired;
	FUNC0(&clp->cl_rpc_users);
	return nfs_ok;
}