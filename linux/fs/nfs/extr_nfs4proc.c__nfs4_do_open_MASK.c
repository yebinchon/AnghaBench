#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {int* attr_bitmask; int /*<<< orphan*/  nfs_client; } ;
struct nfs_open_context {struct nfs4_state* state; struct nfs4_threshold* mdsthreshold; struct cred* cred; struct dentry* dentry; } ;
struct nfs4_threshold {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct TYPE_6__ {struct nfs4_threshold* mdsthreshold; } ;
struct TYPE_5__ {int /*<<< orphan*/  f_attr; } ;
struct TYPE_4__ {int open_flags; scalar_t__ createmode; int /*<<< orphan*/ * open_bitmap; } ;
struct nfs4_opendata {TYPE_3__ f_attr; scalar_t__ file_created; TYPE_2__ o_res; TYPE_1__ o_arg; int /*<<< orphan*/  state; } ;
struct nfs4_open_createattrs {struct nfs4_label* label; struct iattr* sattr; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {unsigned int ia_valid; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;
typedef  enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;

/* Variables and functions */
 int ENOMEM ; 
 int FATTR4_WORD2_MDSTHRESHOLD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfs4_label*) ; 
 scalar_t__ NFS4_CREATE_GUARDED ; 
 int NFS4_OPEN_CLAIM_FH ; 
 int NFS4_OPEN_CLAIM_NULL ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int FUNC2 (struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 
 int FUNC4 (struct nfs4_opendata*,int,struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,struct iattr*,struct nfs_open_context*,struct nfs4_label*,struct nfs4_label*) ; 
 unsigned int FUNC10 (struct nfs4_opendata*,struct iattr*,struct nfs4_label**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct nfs4_state_owner*) ; 
 struct nfs4_state_owner* FUNC12 (struct nfs_server*,struct cred const*,int /*<<< orphan*/ ) ; 
 struct nfs4_label* FUNC13 (struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfs4_label*) ; 
 struct nfs4_opendata* FUNC15 (struct dentry*,struct nfs4_state_owner*,int /*<<< orphan*/ ,int,struct nfs4_open_createattrs const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nfs4_opendata*) ; 
 int /*<<< orphan*/ * nfs4_pnfs_open_bitmap ; 
 int /*<<< orphan*/  FUNC17 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct iattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs4_label*) ; 
 struct nfs4_threshold* FUNC22 () ; 
 scalar_t__ FUNC23 (struct nfs4_threshold**,struct nfs4_threshold*,struct nfs_server*) ; 

__attribute__((used)) static int FUNC24(struct inode *dir,
			struct nfs_open_context *ctx,
			int flags,
			const struct nfs4_open_createattrs *c,
			int *opened)
{
	struct nfs4_state_owner  *sp;
	struct nfs4_state     *state = NULL;
	struct nfs_server       *server = FUNC1(dir);
	struct nfs4_opendata *opendata;
	struct dentry *dentry = ctx->dentry;
	const struct cred *cred = ctx->cred;
	struct nfs4_threshold **ctx_th = &ctx->mdsthreshold;
	fmode_t fmode = FUNC3(ctx);
	enum open_claim_type4 claim = NFS4_OPEN_CLAIM_NULL;
	struct iattr *sattr = c->sattr;
	struct nfs4_label *label = c->label;
	struct nfs4_label *olabel = NULL;
	int status;

	/* Protect against reboot recovery conflicts */
	status = -ENOMEM;
	sp = FUNC12(server, cred, GFP_KERNEL);
	if (sp == NULL) {
		FUNC7("nfs4_do_open: nfs4_get_state_owner failed!\n");
		goto out_err;
	}
	status = FUNC8(server->nfs_client);
	if (status != 0)
		goto err_put_state_owner;
	if (FUNC6(dentry))
		FUNC18(FUNC5(dentry), fmode);
	status = -ENOMEM;
	if (FUNC6(dentry))
		claim = NFS4_OPEN_CLAIM_FH;
	opendata = FUNC15(dentry, sp, fmode, flags,
			c, claim, GFP_KERNEL);
	if (opendata == NULL)
		goto err_put_state_owner;

	if (label) {
		olabel = FUNC13(server, GFP_KERNEL);
		if (FUNC0(olabel)) {
			status = FUNC2(olabel);
			goto err_opendata_put;
		}
	}

	if (server->attr_bitmask[2] & FATTR4_WORD2_MDSTHRESHOLD) {
		if (!opendata->f_attr.mdsthreshold) {
			opendata->f_attr.mdsthreshold = FUNC22();
			if (!opendata->f_attr.mdsthreshold)
				goto err_free_label;
		}
		opendata->o_arg.open_bitmap = &nfs4_pnfs_open_bitmap[0];
	}
	if (FUNC6(dentry))
		opendata->state = FUNC11(FUNC5(dentry), sp);

	status = FUNC4(opendata, flags, ctx);
	if (status != 0)
		goto err_free_label;
	state = ctx->state;

	if ((opendata->o_arg.open_flags & (O_CREAT|O_EXCL)) == (O_CREAT|O_EXCL) &&
	    (opendata->o_arg.createmode != NFS4_CREATE_GUARDED)) {
		unsigned attrs = FUNC10(opendata, sattr, &label);
		/*
		 * send create attributes which was not set by open
		 * with an extra setattr.
		 */
		if (attrs || label) {
			unsigned ia_old = sattr->ia_valid;

			sattr->ia_valid = attrs;
			FUNC19(opendata->o_res.f_attr);
			status = FUNC9(state->inode, cred,
					opendata->o_res.f_attr, sattr,
					ctx, label, olabel);
			if (status == 0) {
				FUNC20(state->inode, sattr,
						opendata->o_res.f_attr);
				FUNC21(state->inode, opendata->o_res.f_attr, olabel);
			}
			sattr->ia_valid = ia_old;
		}
	}
	if (opened && opendata->file_created)
		*opened = 1;

	if (FUNC23(ctx_th, opendata->f_attr.mdsthreshold, server)) {
		*ctx_th = opendata->f_attr.mdsthreshold;
		opendata->f_attr.mdsthreshold = NULL;
	}

	FUNC14(olabel);

	FUNC16(opendata);
	FUNC17(sp);
	return 0;
err_free_label:
	FUNC14(olabel);
err_opendata_put:
	FUNC16(opendata);
err_put_state_owner:
	FUNC17(sp);
out_err:
	return status;
}