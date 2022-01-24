#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cl_boot; } ;
struct xdr_netobj {int dummy; } ;
struct nfsd4_setclientid {TYPE_3__ se_confirm; TYPE_1__ se_clientid; int /*<<< orphan*/  se_verf; struct xdr_netobj se_name; } ;
union nfsd4_op_u {struct nfsd4_setclientid setclientid; } ;
struct svc_rqst {int /*<<< orphan*/  rq_cred; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfsd4_compound_state {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  cl_id; int /*<<< orphan*/  cl_boot; } ;
struct nfs4_client {TYPE_4__ cl_confirm; TYPE_2__ cl_clientid; scalar_t__ cl_minorversion; int /*<<< orphan*/  cl_verifier; int /*<<< orphan*/  cl_addr; int /*<<< orphan*/  cl_cred; } ;
typedef  int /*<<< orphan*/  nfs4_verifier ;
typedef  int /*<<< orphan*/  addr_str ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_client*) ; 
 scalar_t__ FUNC2 (struct nfs4_client*) ; 
 scalar_t__ FUNC3 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_client*,struct nfs4_client*) ; 
 struct nfs4_client* FUNC5 (struct xdr_netobj,struct svc_rqst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_client*) ; 
 struct nfs4_client* FUNC8 (struct xdr_netobj*,struct nfsd_net*) ; 
 struct nfs4_client* FUNC9 (struct xdr_netobj*,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs4_client*,struct nfsd4_setclientid*,struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs4_client*,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct nfsd_net* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  nfserr_clid_inuse ; 
 int /*<<< orphan*/  nfserr_jukebox ; 
 int /*<<< orphan*/  FUNC15 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct nfs4_client*) ; 

__be32
FUNC21(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		  union nfsd4_op_u *u)
{
	struct nfsd4_setclientid *setclid = &u->setclientid;
	struct xdr_netobj 	clname = setclid->se_name;
	nfs4_verifier		clverifier = setclid->se_verf;
	struct nfs4_client	*conf, *new;
	struct nfs4_client	*unconf = NULL;
	__be32 			status;
	struct nfsd_net		*nn = FUNC14(FUNC0(rqstp), nfsd_net_id);

	new = FUNC5(clname, rqstp, &clverifier);
	if (new == NULL)
		return nfserr_jukebox;
	/* Cases below refer to rfc 3530 section 14.2.33: */
	FUNC18(&nn->client_lock);
	conf = FUNC8(&clname, nn);
	if (conf && FUNC2(conf)) {
		/* case 0: */
		status = nfserr_clid_inuse;
		if (FUNC3(conf))
			goto out;
		if (!FUNC16(&conf->cl_cred, &rqstp->rq_cred)) {
			char addr_str[INET6_ADDRSTRLEN];
			FUNC15((struct sockaddr *) &conf->cl_addr, addr_str,
				 sizeof(addr_str));
			FUNC6("NFSD: setclientid: string in use by client "
				"at %s\n", addr_str);
			goto out;
		}
	}
	unconf = FUNC9(&clname, nn);
	if (unconf)
		FUNC20(unconf);
	if (conf && FUNC17(&conf->cl_verifier, &clverifier)) {
		/* case 1: probable callback update */
		FUNC4(new, conf);
		FUNC12(new, nn);
	} else /* case 4 (new client) or cases 2, 3 (client reboot): */
		;
	new->cl_minorversion = 0;
	FUNC11(new, setclid, rqstp);
	FUNC1(new);
	setclid->se_clientid.cl_boot = new->cl_clientid.cl_boot;
	setclid->se_clientid.cl_id = new->cl_clientid.cl_id;
	FUNC13(setclid->se_confirm.data, new->cl_confirm.data, sizeof(setclid->se_confirm.data));
	new = NULL;
	status = nfs_ok;
out:
	FUNC19(&nn->client_lock);
	if (new)
		FUNC10(new);
	if (unconf)
		FUNC7(unconf);
	return status;
}