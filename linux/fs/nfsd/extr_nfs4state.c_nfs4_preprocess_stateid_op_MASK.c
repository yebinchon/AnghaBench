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
struct svc_rqst {int dummy; } ;
struct svc_fh {int /*<<< orphan*/  fh_dentry; } ;
struct nfsd_net {int dummy; } ;
struct nfsd_file {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_stid {int sc_type; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
#define  NFS4_DELEG_STID 130 
#define  NFS4_LOCK_STID 129 
#define  NFS4_OPEN_STID 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct net* FUNC1 (struct svc_rqst*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net*,struct svc_fh*,int /*<<< orphan*/ *,int) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_stid*) ; 
 scalar_t__ FUNC6 (struct net*,struct inode*) ; 
 struct nfsd_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct svc_fh*,struct nfs4_stid*) ; 
 scalar_t__ FUNC10 (struct svc_rqst*,struct svc_fh*,struct nfs4_stid*,struct nfsd_file**,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs4_stid*) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  FUNC13 (struct nfsd4_compound_state*) ; 
 scalar_t__ FUNC14 (struct nfsd4_compound_state*,int /*<<< orphan*/ *,int,struct nfs4_stid**,struct nfsd_net*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct nfs4_stid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 scalar_t__ nfserr_bad_stateid ; 
 scalar_t__ nfserr_grace ; 
 int /*<<< orphan*/  FUNC16 (struct nfs4_stid*) ; 

__be32
FUNC17(struct svc_rqst *rqstp,
		struct nfsd4_compound_state *cstate, struct svc_fh *fhp,
		stateid_t *stateid, int flags, struct nfsd_file **nfp)
{
	struct inode *ino = FUNC4(fhp->fh_dentry);
	struct net *net = FUNC1(rqstp);
	struct nfsd_net *nn = FUNC7(net, nfsd_net_id);
	struct nfs4_stid *s = NULL;
	__be32 status;

	if (nfp)
		*nfp = NULL;

	if (FUNC6(net, ino))
		return nfserr_grace;

	if (FUNC2(stateid) || FUNC0(stateid)) {
		status = FUNC3(net, fhp, stateid, flags);
		goto done;
	}

	status = FUNC14(cstate, stateid,
				NFS4_DELEG_STID|NFS4_OPEN_STID|NFS4_LOCK_STID,
				&s, nn);
	if (status)
		return status;
	status = FUNC15(stateid, s,
			FUNC13(cstate));
	if (status)
		goto out;

	switch (s->sc_type) {
	case NFS4_DELEG_STID:
		status = FUNC8(FUNC5(s), flags);
		break;
	case NFS4_OPEN_STID:
	case NFS4_LOCK_STID:
		status = FUNC11(FUNC16(s), flags);
		break;
	default:
		status = nfserr_bad_stateid;
		break;
	}
	if (status)
		goto out;
	status = FUNC9(fhp, s);

done:
	if (status == nfs_ok && nfp)
		status = FUNC10(rqstp, fhp, s, nfp, flags);
out:
	if (s)
		FUNC12(s);
	return status;
}