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
struct nfsd4_write {scalar_t__ wr_offset; unsigned long wr_buflen; unsigned long wr_bytes_written; int /*<<< orphan*/  wr_how_written; int /*<<< orphan*/  wr_head; int /*<<< orphan*/  wr_pagelist; int /*<<< orphan*/  wr_verifier; int /*<<< orphan*/  wr_stable_how; int /*<<< orphan*/  wr_stateid; } ;
union nfsd4_op_u {struct nfsd4_write write; } ;
struct svc_rqst {int /*<<< orphan*/  rq_vec; } ;
struct nfsd_file {int /*<<< orphan*/  nf_file; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OFFSET_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  WR_STATE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct svc_rqst*,struct nfsd4_compound_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsd_file**) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  FUNC6 (struct nfsd_file*) ; 
 scalar_t__ FUNC7 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,unsigned long*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfserr_inval ; 
 int FUNC8 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_rqst*,int /*<<< orphan*/ *,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_rqst*,int /*<<< orphan*/ *,scalar_t__,unsigned long) ; 

__attribute__((used)) static __be32
FUNC11(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	    union nfsd4_op_u *u)
{
	struct nfsd4_write *write = &u->write;
	stateid_t *stateid = &write->wr_stateid;
	struct nfsd_file *nf = NULL;
	__be32 status = nfs_ok;
	unsigned long cnt;
	int nvecs;

	if (write->wr_offset >= OFFSET_MAX)
		return nfserr_inval;

	cnt = write->wr_buflen;
	FUNC10(rqstp, &cstate->current_fh,
			       write->wr_offset, cnt);
	status = FUNC5(rqstp, cstate, &cstate->current_fh,
						stateid, WR_STATE, &nf);
	if (status) {
		FUNC3("NFSD: nfsd4_write: couldn't process stateid!\n");
		return status;
	}

	write->wr_how_written = write->wr_stable_how;
	FUNC4(&write->wr_verifier, FUNC1(rqstp));

	nvecs = FUNC8(rqstp, write->wr_pagelist,
				      &write->wr_head, write->wr_buflen);
	FUNC2(nvecs > FUNC0(rqstp->rq_vec));

	status = FUNC7(rqstp, &cstate->current_fh, nf->nf_file,
				write->wr_offset, rqstp->rq_vec, nvecs, &cnt,
				write->wr_how_written);
	FUNC6(nf);

	write->wr_bytes_written = cnt;
	FUNC9(rqstp, &cstate->current_fh,
			      write->wr_offset, cnt);
	return status;
}