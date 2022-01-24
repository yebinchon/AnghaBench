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
struct nfsd4_delegreturn {int /*<<< orphan*/  dr_stateid; } ;
union nfsd4_op_u {struct nfsd4_delegreturn delegreturn; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
struct nfs4_stid {int dummy; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_stid; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_DELEG_STID ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  S_IFREG ; 
 struct nfs4_delegation* FUNC1 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_delegation*) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfsd_net* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfsd4_compound_state*) ; 
 scalar_t__ FUNC7 (struct nfsd4_compound_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfs4_stid**,struct nfsd_net*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

__be32
FUNC9(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		  union nfsd4_op_u *u)
{
	struct nfsd4_delegreturn *dr = &u->delegreturn;
	struct nfs4_delegation *dp;
	stateid_t *stateid = &dr->dr_stateid;
	struct nfs4_stid *s;
	__be32 status;
	struct nfsd_net *nn = FUNC4(FUNC0(rqstp), nfsd_net_id);

	if ((status = FUNC3(rqstp, &cstate->current_fh, S_IFREG, 0)))
		return status;

	status = FUNC7(cstate, stateid, NFS4_DELEG_STID, &s, nn);
	if (status)
		goto out;
	dp = FUNC1(s);
	status = FUNC8(stateid, &dp->dl_stid, FUNC6(cstate));
	if (status)
		goto put_stateid;

	FUNC2(dp);
put_stateid:
	FUNC5(&dp->dl_stid);
out:
	return status;
}