#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct nfs4_stid {int sc_type; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_addr; int /*<<< orphan*/  cl_clientid; } ;
struct TYPE_9__ {int /*<<< orphan*/  so_clid; } ;
struct TYPE_10__ {TYPE_1__ si_opaque; } ;
typedef  TYPE_2__ stateid_t ;
typedef  int /*<<< orphan*/  addr_str ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int INET6_ADDRSTRLEN ; 
#define  NFS4_CLOSED_DELEG_STID 133 
#define  NFS4_CLOSED_STID 132 
#define  NFS4_DELEG_STID 131 
#define  NFS4_LOCK_STID 130 
#define  NFS4_OPEN_STID 129 
#define  NFS4_REVOKED_DELEG_STID 128 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 struct nfs4_stid* FUNC3 (struct nfs4_client*,TYPE_2__*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,struct nfs4_stid*,int) ; 
 scalar_t__ nfserr_bad_stateid ; 
 scalar_t__ nfserr_deleg_revoked ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_stid*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 FUNC13(struct nfs4_client *cl, stateid_t *stateid)
{
	struct nfs4_stid *s;
	__be32 status = nfserr_bad_stateid;

	if (FUNC2(stateid) || FUNC1(stateid) ||
		FUNC0(stateid))
		return status;
	/* Client debugging aid. */
	if (!FUNC10(&stateid->si_opaque.so_clid, &cl->cl_clientid)) {
		char addr_str[INET6_ADDRSTRLEN];
		FUNC9((struct sockaddr *)&cl->cl_addr, addr_str,
				 sizeof(addr_str));
		FUNC7("NFSD: client %s testing state ID "
					"with incorrect client ID\n", addr_str);
		return status;
	}
	FUNC11(&cl->cl_lock);
	s = FUNC3(cl, stateid);
	if (!s)
		goto out_unlock;
	status = FUNC5(stateid, s, 1);
	if (status)
		goto out_unlock;
	switch (s->sc_type) {
	case NFS4_DELEG_STID:
		status = nfs_ok;
		break;
	case NFS4_REVOKED_DELEG_STID:
		status = nfserr_deleg_revoked;
		break;
	case NFS4_OPEN_STID:
	case NFS4_LOCK_STID:
		status = FUNC4(FUNC6(s));
		break;
	default:
		FUNC8("unknown stateid type %x\n", s->sc_type);
		/* Fallthrough */
	case NFS4_CLOSED_STID:
	case NFS4_CLOSED_DELEG_STID:
		status = nfserr_bad_stateid;
	}
out_unlock:
	FUNC12(&cl->cl_lock);
	return status;
}