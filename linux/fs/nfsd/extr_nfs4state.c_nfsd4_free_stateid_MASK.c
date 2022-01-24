#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfsd4_free_stateid {int /*<<< orphan*/  fr_stateid; } ;
union nfsd4_op_u {struct nfsd4_free_stateid free_stateid; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {TYPE_1__* session; } ;
struct nfs4_stid {int sc_type; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_count; int /*<<< orphan*/  sc_stateid; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_recall_lru; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct nfs4_client* se_client; } ;

/* Variables and functions */
#define  NFS4_DELEG_STID 131 
#define  NFS4_LOCK_STID 130 
#define  NFS4_OPEN_STID 129 
#define  NFS4_REVOKED_DELEG_STID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nfs4_delegation* FUNC1 (struct nfs4_stid*) ; 
 struct nfs4_stid* FUNC2 (struct nfs4_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct nfs4_stid*) ; 
 int /*<<< orphan*/  nfserr_bad_stateid ; 
 int /*<<< orphan*/  nfserr_locks_held ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__be32
FUNC9(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		   union nfsd4_op_u *u)
{
	struct nfsd4_free_stateid *free_stateid = &u->free_stateid;
	stateid_t *stateid = &free_stateid->fr_stateid;
	struct nfs4_stid *s;
	struct nfs4_delegation *dp;
	struct nfs4_client *cl = cstate->session->se_client;
	__be32 ret = nfserr_bad_stateid;

	FUNC7(&cl->cl_lock);
	s = FUNC2(cl, stateid);
	if (!s)
		goto out_unlock;
	FUNC7(&s->sc_lock);
	switch (s->sc_type) {
	case NFS4_DELEG_STID:
		ret = nfserr_locks_held;
		break;
	case NFS4_OPEN_STID:
		ret = FUNC0(stateid, &s->sc_stateid, 1);
		if (ret)
			break;
		ret = nfserr_locks_held;
		break;
	case NFS4_LOCK_STID:
		FUNC8(&s->sc_lock);
		FUNC6(&s->sc_count);
		FUNC8(&cl->cl_lock);
		ret = FUNC5(stateid, s);
		goto out;
	case NFS4_REVOKED_DELEG_STID:
		FUNC8(&s->sc_lock);
		dp = FUNC1(s);
		FUNC3(&dp->dl_recall_lru);
		FUNC8(&cl->cl_lock);
		FUNC4(s);
		ret = nfs_ok;
		goto out;
	/* Default falls through and returns nfserr_bad_stateid */
	}
	FUNC8(&s->sc_lock);
out_unlock:
	FUNC8(&cl->cl_lock);
out:
	return ret;
}