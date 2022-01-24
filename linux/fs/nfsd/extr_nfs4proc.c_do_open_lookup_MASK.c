#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct nfsd4_open {int* op_bmval; scalar_t__ op_claim_type; int /*<<< orphan*/  op_cinfo; int /*<<< orphan*/  op_created; int /*<<< orphan*/ * op_acl; TYPE_3__ op_fname; int /*<<< orphan*/  op_createmode; TYPE_4__ op_label; int /*<<< orphan*/  op_truncate; TYPE_1__ op_verf; int /*<<< orphan*/  op_iattr; scalar_t__ op_umask; scalar_t__ op_create; } ;
struct nfsd4_compound_state {struct svc_fh current_fh; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_10__ {TYPE_2__* fs; } ;
struct TYPE_7__ {scalar_t__ umask; } ;

/* Variables and functions */
 int FATTR4_WORD1_TIME_ACCESS ; 
 int FATTR4_WORD1_TIME_MODIFY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFS4_FHSIZE ; 
 scalar_t__ NFS4_OPEN_CLAIM_DELEGATE_CUR ; 
 int NFSD_MAY_NOP ; 
 int NFSD_MAY_OWNER_OVERRIDE ; 
 TYPE_5__* current ; 
 scalar_t__ FUNC0 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nfsd4_open*) ; 
 struct svc_fh* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_fh*,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsd4_compound_state*,struct nfsd4_open*,struct svc_fh*) ; 
 scalar_t__ FUNC8 (struct svc_fh*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct svc_fh*) ; 
 scalar_t__ nfserr_jukebox ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct svc_fh*) ; 

__attribute__((used)) static __be32
FUNC12(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate, struct nfsd4_open *open, struct svc_fh **resfh)
{
	struct svc_fh *current_fh = &cstate->current_fh;
	int accmode;
	__be32 status;

	*resfh = FUNC5(sizeof(struct svc_fh), GFP_KERNEL);
	if (!*resfh)
		return nfserr_jukebox;
	FUNC3(*resfh, NFS4_FHSIZE);
	open->op_truncate = 0;

	if (open->op_create) {
		/* FIXME: check session persistence and pnfs flags.
		 * The nfsv4.1 spec requires the following semantics:
		 *
		 * Persistent   | pNFS   | Server REQUIRED | Client Allowed
		 * Reply Cache  | server |                 |
		 * -------------+--------+-----------------+--------------------
		 * no           | no     | EXCLUSIVE4_1    | EXCLUSIVE4_1
		 *              |        |                 | (SHOULD)
		 *              |        | and EXCLUSIVE4  | or EXCLUSIVE4
		 *              |        |                 | (SHOULD NOT)
		 * no           | yes    | EXCLUSIVE4_1    | EXCLUSIVE4_1
		 * yes          | no     | GUARDED4        | GUARDED4
		 * yes          | yes    | GUARDED4        | GUARDED4
		 */

		/*
		 * Note: create modes (UNCHECKED,GUARDED...) are the same
		 * in NFSv4 as in v3 except EXCLUSIVE4_1.
		 */
		current->fs->umask = open->op_umask;
		status = FUNC0(rqstp, current_fh, open->op_fname.data,
					open->op_fname.len, &open->op_iattr,
					*resfh, open->op_createmode,
					(u32 *)open->op_verf.data,
					&open->op_truncate, &open->op_created);
		current->fs->umask = 0;

		if (!status && open->op_label.len)
			FUNC6(*resfh, &open->op_label, open->op_bmval);

		/*
		 * Following rfc 3530 14.2.16, and rfc 5661 18.16.4
		 * use the returned bitmask to indicate which attributes
		 * we used to store the verifier:
		 */
		if (FUNC9(open->op_createmode) && status == 0)
			open->op_bmval[1] |= (FATTR4_WORD1_TIME_ACCESS |
						FATTR4_WORD1_TIME_MODIFY);
	} else
		/*
		 * Note this may exit with the parent still locked.
		 * We will hold the lock until nfsd4_open's final
		 * lookup, to prevent renames or unlinks until we've had
		 * a chance to an acquire a delegation if appropriate.
		 */
		status = FUNC10(rqstp, current_fh,
				     open->op_fname.data, open->op_fname.len, *resfh);
	if (status)
		goto out;
	status = FUNC8(*resfh);
	if (status)
		goto out;

	if (FUNC4(open) && open->op_acl != NULL)
		FUNC2(rqstp, *resfh, open->op_acl, open->op_bmval);

	FUNC7(cstate, open, *resfh);
	accmode = NFSD_MAY_NOP;
	if (open->op_created ||
			open->op_claim_type == NFS4_OPEN_CLAIM_DELEGATE_CUR)
		accmode |= NFSD_MAY_OWNER_OVERRIDE;
	status = FUNC1(rqstp, *resfh, open, accmode);
	FUNC11(&open->op_cinfo, current_fh);
out:
	return status;
}