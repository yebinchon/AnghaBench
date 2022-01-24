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
struct nfsd4_commit {int /*<<< orphan*/  co_count; int /*<<< orphan*/  co_offset; int /*<<< orphan*/  co_verf; } ;
union nfsd4_op_u {struct nfsd4_commit commit; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC3(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	     union nfsd4_op_u *u)
{
	struct nfsd4_commit *commit = &u->commit;

	FUNC1(&commit->co_verf, FUNC0(rqstp));
	return FUNC2(rqstp, &cstate->current_fh, commit->co_offset,
			     commit->co_count);
}