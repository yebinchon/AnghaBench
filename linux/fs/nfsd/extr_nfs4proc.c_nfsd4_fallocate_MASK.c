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
struct nfsd_file {int /*<<< orphan*/  nf_file; } ;
struct nfsd4_fallocate {int /*<<< orphan*/  falloc_length; int /*<<< orphan*/  falloc_offset; int /*<<< orphan*/  falloc_stateid; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  WR_STATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct svc_rqst*,struct nfsd4_compound_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsd_file**) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd_file*) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		struct nfsd4_fallocate *fallocate, int flags)
{
	__be32 status;
	struct nfsd_file *nf;

	status = FUNC1(rqstp, cstate, &cstate->current_fh,
					    &fallocate->falloc_stateid,
					    WR_STATE, &nf);
	if (status != nfs_ok) {
		FUNC0("NFSD: nfsd4_fallocate: couldn't process stateid!\n");
		return status;
	}

	status = FUNC2(rqstp, &cstate->current_fh, nf->nf_file,
				     fallocate->falloc_offset,
				     fallocate->falloc_length,
				     flags);
	FUNC3(nf);
	return status;
}