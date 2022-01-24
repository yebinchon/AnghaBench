#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xdr_netobj {int dummy; } ;
struct svc_rqst {int /*<<< orphan*/  rq_cred; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {scalar_t__ clientid_base; } ;
struct TYPE_3__ {scalar_t__ cl_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  cl_ref; } ;
struct nfs4_client {int /*<<< orphan*/  cl_nfsd_dentry; TYPE_1__ cl_clientid; TYPE_2__ cl_nfsdfs; struct net* net; int /*<<< orphan*/ * cl_cb_session; int /*<<< orphan*/  cl_addr; int /*<<< orphan*/  cl_cb_slot_busy; int /*<<< orphan*/  cl_time; int /*<<< orphan*/  cl_cb_null; int /*<<< orphan*/  cl_cred; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_verifier ;

/* Variables and functions */
 int /*<<< orphan*/  NFSPROC4_CLNT_CB_NULL ; 
 struct net* FUNC0 (struct svc_rqst*) ; 
 struct nfs4_client* FUNC1 (struct xdr_netobj) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  client_files ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_client*,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 struct nfsd_net* FUNC10 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct nfs4_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsd_net*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 struct sockaddr* FUNC13 (struct svc_rqst*) ; 

__attribute__((used)) static struct nfs4_client *FUNC14(struct xdr_netobj name,
		struct svc_rqst *rqstp, nfs4_verifier *verf)
{
	struct nfs4_client *clp;
	struct sockaddr *sa = FUNC13(rqstp);
	int ret;
	struct net *net = FUNC0(rqstp);
	struct nfsd_net *nn = FUNC10(net, nfsd_net_id);

	clp = FUNC1(name);
	if (clp == NULL)
		return NULL;

	ret = FUNC3(&clp->cl_cred, &rqstp->rq_cred);
	if (ret) {
		FUNC5(clp);
		return NULL;
	}
	FUNC6(clp, nn);
	FUNC8(&clp->cl_nfsdfs.cl_ref);
	FUNC11(&clp->cl_cb_null, clp, NULL, NFSPROC4_CLNT_CB_NULL);
	clp->cl_time = FUNC7();
	FUNC2(0, &clp->cl_cb_slot_busy);
	FUNC4(clp, verf);
	FUNC9(&clp->cl_addr, sa, sizeof(struct sockaddr_storage));
	clp->cl_cb_session = NULL;
	clp->net = net;
	clp->cl_nfsd_dentry = FUNC12(nn, &clp->cl_nfsdfs,
			clp->cl_clientid.cl_id - nn->clientid_base,
			client_files);
	if (!clp->cl_nfsd_dentry) {
		FUNC5(clp);
		return NULL;
	}
	return clp;
}