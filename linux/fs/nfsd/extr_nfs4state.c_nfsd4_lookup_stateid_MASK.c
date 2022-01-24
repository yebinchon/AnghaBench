#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nfsd_net {int dummy; } ;
struct nfsd4_compound_state {scalar_t__ minorversion; int /*<<< orphan*/  clp; scalar_t__ session; } ;
struct nfs4_stid {unsigned char sc_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  so_clid; } ;
struct TYPE_9__ {TYPE_1__ si_opaque; } ;
typedef  TYPE_2__ stateid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 unsigned char NFS4_DELEG_STID ; 
 unsigned char NFS4_REVOKED_DELEG_STID ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 struct nfs4_stid* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,unsigned char) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct nfsd4_compound_state*,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_stid*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ nfserr_bad_stateid ; 
 scalar_t__ nfserr_deleg_revoked ; 
 scalar_t__ nfserr_stale_clientid ; 
 scalar_t__ nfserr_stale_stateid ; 

__be32
FUNC6(struct nfsd4_compound_state *cstate,
		     stateid_t *stateid, unsigned char typemask,
		     struct nfs4_stid **s, struct nfsd_net *nn)
{
	__be32 status;
	bool return_revoked = false;

	/*
	 *  only return revoked delegations if explicitly asked.
	 *  otherwise we report revoked or bad_stateid status.
	 */
	if (typemask & NFS4_REVOKED_DELEG_STID)
		return_revoked = true;
	else if (typemask & NFS4_DELEG_STID)
		typemask |= NFS4_REVOKED_DELEG_STID;

	if (FUNC2(stateid) || FUNC1(stateid) ||
		FUNC0(stateid))
		return nfserr_bad_stateid;
	status = FUNC4(&stateid->si_opaque.so_clid, cstate, nn);
	if (status == nfserr_stale_clientid) {
		if (cstate->session)
			return nfserr_bad_stateid;
		return nfserr_stale_stateid;
	}
	if (status)
		return status;
	*s = FUNC3(cstate->clp, stateid, typemask);
	if (!*s)
		return nfserr_bad_stateid;
	if (((*s)->sc_type == NFS4_REVOKED_DELEG_STID) && !return_revoked) {
		FUNC5(*s);
		if (cstate->minorversion)
			return nfserr_deleg_revoked;
		return nfserr_bad_stateid;
	}
	return nfs_ok;
}