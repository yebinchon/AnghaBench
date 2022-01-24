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
struct nfsd4_setclientid_confirm {int /*<<< orphan*/  sc_clientid; int /*<<< orphan*/  sc_confirm; } ;
union nfsd4_op_u {struct nfsd4_setclientid_confirm setclientid_confirm; } ;
struct svc_rqst {int /*<<< orphan*/  rq_cred; } ;
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int /*<<< orphan*/  cl_cred; int /*<<< orphan*/  cl_name; int /*<<< orphan*/  cl_cb_conn; int /*<<< orphan*/  cl_confirm; } ;
typedef  int /*<<< orphan*/  nfs4_verifier ;
typedef  int /*<<< orphan*/  clientid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*) ; 
 scalar_t__ FUNC2 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_client*) ; 
 struct nfs4_client* FUNC4 (int /*<<< orphan*/ *,int,struct nfsd_net*) ; 
 struct nfs4_client* FUNC5 (int /*<<< orphan*/ *,struct nfsd_net*) ; 
 struct nfs4_client* FUNC6 (int /*<<< orphan*/ *,int,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_client*) ; 
 scalar_t__ FUNC8 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs4_client*) ; 
 struct nfsd_net* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  FUNC11 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs4_client*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 scalar_t__ nfserr_clid_inuse ; 
 scalar_t__ nfserr_stale_clientid ; 
 int /*<<< orphan*/  FUNC13 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct nfs4_client*) ; 

__be32
FUNC19(struct svc_rqst *rqstp,
			struct nfsd4_compound_state *cstate,
			union nfsd4_op_u *u)
{
	struct nfsd4_setclientid_confirm *setclientid_confirm =
			&u->setclientid_confirm;
	struct nfs4_client *conf, *unconf;
	struct nfs4_client *old = NULL;
	nfs4_verifier confirm = setclientid_confirm->sc_confirm; 
	clientid_t * clid = &setclientid_confirm->sc_clientid;
	__be32 status;
	struct nfsd_net	*nn = FUNC10(FUNC1(rqstp), nfsd_net_id);

	if (FUNC0(clid, nn))
		return nfserr_stale_clientid;

	FUNC16(&nn->client_lock);
	conf = FUNC4(clid, false, nn);
	unconf = FUNC6(clid, false, nn);
	/*
	 * We try hard to give out unique clientid's, so if we get an
	 * attempt to confirm the same clientid with a different cred,
	 * the client may be buggy; this should never happen.
	 *
	 * Nevertheless, RFC 7530 recommends INUSE for this case:
	 */
	status = nfserr_clid_inuse;
	if (unconf && !FUNC14(&unconf->cl_cred, &rqstp->rq_cred))
		goto out;
	if (conf && !FUNC14(&conf->cl_cred, &rqstp->rq_cred))
		goto out;
	/* cases below refer to rfc 3530 section 14.2.34: */
	if (!unconf || !FUNC15(&confirm, &unconf->cl_confirm)) {
		if (conf && FUNC15(&confirm, &conf->cl_confirm)) {
			/* case 2: probable retransmit */
			status = nfs_ok;
		} else /* case 4: client hasn't noticed we rebooted yet? */
			status = nfserr_stale_clientid;
		goto out;
	}
	status = nfs_ok;
	if (conf) { /* case 1: callback update */
		old = unconf;
		FUNC18(old);
		FUNC11(conf, &unconf->cl_cb_conn);
	} else { /* case 3: normal case; new or rebooted client */
		old = FUNC5(&unconf->cl_name, nn);
		if (old) {
			status = nfserr_clid_inuse;
			if (FUNC2(old)
					&& !FUNC14(&unconf->cl_cred,
							&old->cl_cred))
				goto out;
			status = FUNC8(old);
			if (status) {
				old = NULL;
				goto out;
			}
		}
		FUNC9(unconf);
		conf = unconf;
	}
	FUNC7(conf);
	FUNC17(&nn->client_lock);
	FUNC12(conf);
	FUNC16(&nn->client_lock);
	FUNC13(conf);
out:
	FUNC17(&nn->client_lock);
	if (old)
		FUNC3(old);
	return status;
}