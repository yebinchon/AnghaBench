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
struct nfsd4_destroy_clientid {int /*<<< orphan*/  clientid; } ;
union nfsd4_op_u {struct nfsd4_destroy_clientid destroy_clientid; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_client*) ; 
 struct nfs4_client* FUNC4 (int /*<<< orphan*/ *,int,struct nfsd_net*) ; 
 struct nfs4_client* FUNC5 (int /*<<< orphan*/ *,int,struct nfsd_net*) ; 
 scalar_t__ FUNC6 (struct nfs4_client*) ; 
 struct nfsd_net* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_client*,struct svc_rqst*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 scalar_t__ nfserr_clientid_busy ; 
 scalar_t__ nfserr_stale_clientid ; 
 scalar_t__ nfserr_wrong_cred ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs4_client*) ; 

__be32
FUNC12(struct svc_rqst *rqstp,
		struct nfsd4_compound_state *cstate,
		union nfsd4_op_u *u)
{
	struct nfsd4_destroy_clientid *dc = &u->destroy_clientid;
	struct nfs4_client *conf, *unconf;
	struct nfs4_client *clp = NULL;
	__be32 status = 0;
	struct nfsd_net *nn = FUNC7(FUNC0(rqstp), nfsd_net_id);

	FUNC9(&nn->client_lock);
	unconf = FUNC5(&dc->clientid, true, nn);
	conf = FUNC4(&dc->clientid, true, nn);
	FUNC1(conf && unconf);

	if (conf) {
		if (FUNC2(conf)) {
			status = nfserr_clientid_busy;
			goto out;
		}
		status = FUNC6(conf);
		if (status)
			goto out;
		clp = conf;
	} else if (unconf)
		clp = unconf;
	else {
		status = nfserr_stale_clientid;
		goto out;
	}
	if (!FUNC8(clp, rqstp)) {
		clp = NULL;
		status = nfserr_wrong_cred;
		goto out;
	}
	FUNC11(clp);
out:
	FUNC10(&nn->client_lock);
	if (clp)
		FUNC3(clp);
	return status;
}