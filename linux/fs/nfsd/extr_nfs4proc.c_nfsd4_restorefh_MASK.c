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
typedef  union nfsd4_op_u {int dummy; } nfsd4_op_u ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fh_dentry; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  save_stateid; int /*<<< orphan*/  current_stateid; TYPE_1__ save_fh; int /*<<< orphan*/  current_fh; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_STATE_ID_FLAG ; 
 scalar_t__ FUNC0 (struct nfsd4_compound_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAVED_STATE_ID_FLAG ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_compound_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_restorefh ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		union nfsd4_op_u *u)
{
	if (!cstate->save_fh.fh_dentry)
		return nfserr_restorefh;

	FUNC2(&cstate->current_fh, &cstate->save_fh);
	if (FUNC0(cstate, SAVED_STATE_ID_FLAG)) {
		FUNC3(&cstate->current_stateid, &cstate->save_stateid, sizeof(stateid_t));
		FUNC1(cstate, CURRENT_STATE_ID_FLAG);
	}
	return nfs_ok;
}