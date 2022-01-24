#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rpc_task_setup {int flags; struct nfs4_setclientid* callback_data; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; TYPE_3__* rpc_client; } ;
struct rpc_message {struct cred const* rpc_cred; struct nfs4_setclientid_res* rpc_resp; struct nfs4_setclientid* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_client {int /*<<< orphan*/  cl_acceptor; int /*<<< orphan*/  cl_owner_id; TYPE_3__* cl_rpcclient; int /*<<< orphan*/  cl_ipaddr; int /*<<< orphan*/  cl_flags; } ;
struct nfs4_setclientid_res {int dummy; } ;
struct nfs4_setclientid {scalar_t__ sc_cred; int /*<<< orphan*/  sc_uaddr; int /*<<< orphan*/  sc_uaddr_len; int /*<<< orphan*/  sc_netid; int /*<<< orphan*/  sc_netid_len; struct nfs_client* sc_clnt; int /*<<< orphan*/  sc_prog; int /*<<< orphan*/ * sc_verifier; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_verifier ;
struct TYPE_6__ {TYPE_2__* cl_auth; } ;
struct TYPE_5__ {TYPE_1__* au_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  au_name; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_SETCLIENTID ; 
 int /*<<< orphan*/  NFS_CS_MIGRATION ; 
 int RPC_TASK_NO_ROUND_ROBIN ; 
 int RPC_TASK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_task_setup*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct nfs_client*) ; 
 int FUNC6 (struct nfs_client*) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  nfs4_setclientid_ops ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,unsigned short,unsigned short) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_client*,int) ; 

int FUNC12(struct nfs_client *clp, u32 program,
		unsigned short port, const struct cred *cred,
		struct nfs4_setclientid_res *res)
{
	nfs4_verifier sc_verifier;
	struct nfs4_setclientid setclientid = {
		.sc_verifier = &sc_verifier,
		.sc_prog = program,
		.sc_clnt = clp,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_SETCLIENTID],
		.rpc_argp = &setclientid,
		.rpc_resp = res,
		.rpc_cred = cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_client = clp->cl_rpcclient,
		.rpc_message = &msg,
		.callback_ops = &nfs4_setclientid_ops,
		.callback_data = &setclientid,
		.flags = RPC_TASK_TIMEOUT | RPC_TASK_NO_ROUND_ROBIN,
	};
	int status;

	/* nfs_client_id4 */
	FUNC3(clp, &sc_verifier);

	if (FUNC10(NFS_CS_MIGRATION, &clp->cl_flags))
		status = FUNC6(clp);
	else
		status = FUNC5(clp);

	if (status)
		goto out;

	/* cb_client4 */
	setclientid.sc_netid_len =
				FUNC4(clp,
						setclientid.sc_netid,
						sizeof(setclientid.sc_netid));
	setclientid.sc_uaddr_len = FUNC9(setclientid.sc_uaddr,
				sizeof(setclientid.sc_uaddr), "%s.%u.%u",
				clp->cl_ipaddr, port >> 8, port & 255);

	FUNC0("NFS call  setclientid auth=%s, '%s'\n",
		clp->cl_rpcclient->cl_auth->au_ops->au_name,
		clp->cl_owner_id);

	status = FUNC2(&task_setup_data);
	if (setclientid.sc_cred) {
		FUNC1(clp->cl_acceptor);
		clp->cl_acceptor = FUNC8(setclientid.sc_cred);
		FUNC7(setclientid.sc_cred);
	}
out:
	FUNC11(clp, status);
	FUNC0("NFS reply setclientid: %d\n", status);
	return status;
}