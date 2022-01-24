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
struct nfsd4_compound_state {struct nfs4_client* clp; int /*<<< orphan*/  session; } ;
struct nfs4_client {int /*<<< orphan*/  cl_rpc_users; int /*<<< orphan*/  cl_clientid; } ;
typedef  int /*<<< orphan*/  clientid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfs4_client* FUNC3 (int /*<<< orphan*/ *,int,struct nfsd_net*) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_expired ; 
 int /*<<< orphan*/  nfserr_stale_clientid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 FUNC7(clientid_t *clid,
		struct nfsd4_compound_state *cstate,
		struct nfsd_net *nn)
{
	struct nfs4_client *found;

	if (cstate->clp) {
		found = cstate->clp;
		if (!FUNC4(&found->cl_clientid, clid))
			return nfserr_stale_clientid;
		return nfs_ok;
	}

	if (FUNC0(clid, nn))
		return nfserr_stale_clientid;

	/*
	 * For v4.1+ we get the client in the SEQUENCE op. If we don't have one
	 * cached already then we know this is for is for v4.0 and "sessions"
	 * will be false.
	 */
	FUNC1(cstate->session);
	FUNC5(&nn->client_lock);
	found = FUNC3(clid, false, nn);
	if (!found) {
		FUNC6(&nn->client_lock);
		return nfserr_expired;
	}
	FUNC2(&found->cl_rpc_users);
	FUNC6(&nn->client_lock);

	/* Cache the nfs4_client in cstate! */
	cstate->clp = found;
	return nfs_ok;
}