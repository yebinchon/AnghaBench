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
typedef  int /*<<< orphan*/  u32 ;
struct svc_fh {int dummy; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
struct nfs4_stateowner {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_stateid; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_mutex; TYPE_1__ st_stid; struct nfs4_stateowner* st_stateowner; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct svc_fh*,TYPE_1__*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC3 (struct nfsd4_compound_state*,struct nfs4_stateowner*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsd4_compound_state*) ; 
 scalar_t__ FUNC5 (struct nfs4_ol_stateid*) ; 

__attribute__((used)) static __be32 FUNC6(struct nfsd4_compound_state *cstate, stateid_t *stateid, u32 seqid, struct nfs4_ol_stateid *stp)
{
	struct svc_fh *current_fh = &cstate->current_fh;
	struct nfs4_stateowner *sop = stp->st_stateowner;
	__be32 status;

	status = FUNC3(cstate, sop, seqid);
	if (status)
		return status;
	status = FUNC5(stp);
	if (status != nfs_ok)
		return status;
	status = FUNC0(stateid, &stp->st_stid.sc_stateid, FUNC4(cstate));
	if (status == nfs_ok)
		status = FUNC2(current_fh, &stp->st_stid);
	if (status != nfs_ok)
		FUNC1(&stp->st_mutex);
	return status;
}