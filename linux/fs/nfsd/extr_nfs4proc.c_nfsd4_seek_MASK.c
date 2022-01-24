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
struct nfsd4_seek {int seek_whence; scalar_t__ seek_pos; int seek_eof; int /*<<< orphan*/  seek_offset; int /*<<< orphan*/  seek_stateid; } ;
union nfsd4_op_u {struct nfsd4_seek seek; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_file {int /*<<< orphan*/  nf_file; } ;
struct nfsd4_compound_state {int /*<<< orphan*/  current_fh; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
#define  NFS4_CONTENT_DATA 129 
#define  NFS4_CONTENT_HOLE 128 
 int /*<<< orphan*/  RD_STATE ; 
 int SEEK_DATA ; 
 int SEEK_HOLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct svc_rqst*,struct nfsd4_compound_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfsd_file**) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsd_file*) ; 
 scalar_t__ nfserr_union_notsupp ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __be32
FUNC7(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
	   union nfsd4_op_u *u)
{
	struct nfsd4_seek *seek = &u->seek;
	int whence;
	__be32 status;
	struct nfsd_file *nf;

	status = FUNC3(rqstp, cstate, &cstate->current_fh,
					    &seek->seek_stateid,
					    RD_STATE, &nf);
	if (status) {
		FUNC0("NFSD: nfsd4_seek: couldn't process stateid!\n");
		return status;
	}

	switch (seek->seek_whence) {
	case NFS4_CONTENT_DATA:
		whence = SEEK_DATA;
		break;
	case NFS4_CONTENT_HOLE:
		whence = SEEK_HOLE;
		break;
	default:
		status = nfserr_union_notsupp;
		goto out;
	}

	/*
	 * Note:  This call does change file->f_pos, but nothing in NFSD
	 *        should ever file->f_pos.
	 */
	seek->seek_pos = FUNC6(nf->nf_file, seek->seek_offset, whence);
	if (seek->seek_pos < 0)
		status = FUNC5(seek->seek_pos);
	else if (seek->seek_pos >= FUNC2(FUNC1(nf->nf_file)))
		seek->seek_eof = true;

out:
	FUNC4(nf);
	return status;
}