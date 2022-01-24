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
struct rpc_message {struct cred const* rpc_cred; struct nfs_client* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_client {int /*<<< orphan*/  cl_rpcclient; int /*<<< orphan*/  cl_count; } ;
struct nfs4_renewdata {int /*<<< orphan*/  timestamp; struct nfs_client* client; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t NFSPROC4_CLNT_RENEW ; 
 int /*<<< orphan*/  RPC_TASK_TIMEOUT ; 
 int /*<<< orphan*/  jiffies ; 
 struct nfs4_renewdata* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  nfs4_renew_ops ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct rpc_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs4_renewdata*) ; 

__attribute__((used)) static int FUNC4(struct nfs_client *clp, const struct cred *cred, unsigned renew_flags)
{
	struct rpc_message msg = {
		.rpc_proc	= &nfs4_procedures[NFSPROC4_CLNT_RENEW],
		.rpc_argp	= clp,
		.rpc_cred	= cred,
	};
	struct nfs4_renewdata *data;

	if (renew_flags == 0)
		return 0;
	if (!FUNC2(&clp->cl_count))
		return -EIO;
	data = FUNC0(sizeof(*data), GFP_NOFS);
	if (data == NULL) {
		FUNC1(clp);
		return -ENOMEM;
	}
	data->client = clp;
	data->timestamp = jiffies;
	return FUNC3(clp->cl_rpcclient, &msg, RPC_TASK_TIMEOUT,
			&nfs4_renew_ops, data);
}