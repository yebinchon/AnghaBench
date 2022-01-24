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
struct TYPE_5__ {int /*<<< orphan*/  cb_stateid; } ;
struct nfsd4_copy {int /*<<< orphan*/  copy_task; TYPE_3__* cp_clp; int /*<<< orphan*/  copies; int /*<<< orphan*/  cp_stateid; TYPE_2__ cp_res; int /*<<< orphan*/  refcount; int /*<<< orphan*/  cp_synchronous; int /*<<< orphan*/  fh; int /*<<< orphan*/  nf_dst; int /*<<< orphan*/  cp_dst_stateid; int /*<<< orphan*/  nf_src; int /*<<< orphan*/  cp_src_stateid; } ;
union nfsd4_op_u {struct nfsd4_copy copy; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fh_handle; } ;
struct nfsd4_compound_state {TYPE_1__ current_fh; TYPE_3__* clp; } ;
struct knfsd_fh {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  async_lock; int /*<<< orphan*/  async_copies; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_copy*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd4_copy*,struct nfsd4_copy*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsd4_copy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nfsd4_copy*,char*,char*) ; 
 struct nfsd4_copy* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nfsd_net* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfsd_net*,struct nfsd4_copy*) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  nfsd4_do_async_copy ; 
 scalar_t__ FUNC11 (struct nfsd4_copy*,int) ; 
 scalar_t__ FUNC12 (struct svc_rqst*,struct nfsd4_compound_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC18(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
		union nfsd4_op_u *u)
{
	struct nfsd4_copy *copy = &u->copy;
	__be32 status;
	struct nfsd4_copy *async_copy = NULL;

	status = FUNC12(rqstp, cstate, &copy->cp_src_stateid,
				   &copy->nf_src, &copy->cp_dst_stateid,
				   &copy->nf_dst);
	if (status)
		goto out;

	copy->cp_clp = cstate->clp;
	FUNC8(&copy->fh, &cstate->current_fh.fh_handle,
		sizeof(struct knfsd_fh));
	if (!copy->cp_synchronous) {
		struct nfsd_net *nn = FUNC9(FUNC1(rqstp), nfsd_net_id);

		status = FUNC13(-ENOMEM);
		async_copy = FUNC6(sizeof(struct nfsd4_copy), GFP_KERNEL);
		if (!async_copy)
			goto out;
		if (!FUNC10(nn, copy)) {
			FUNC4(async_copy);
			goto out;
		}
		FUNC14(&async_copy->refcount, 1);
		FUNC8(&copy->cp_res.cb_stateid, &copy->cp_stateid,
			sizeof(copy->cp_stateid));
		FUNC3(copy, async_copy);
		async_copy->copy_task = FUNC5(nfsd4_do_async_copy,
				async_copy, "%s", "copy thread");
		if (FUNC0(async_copy->copy_task))
			goto out_err;
		FUNC15(&async_copy->cp_clp->async_lock);
		FUNC7(&async_copy->copies,
				&async_copy->cp_clp->async_copies);
		FUNC16(&async_copy->cp_clp->async_lock);
		FUNC17(async_copy->copy_task);
		status = nfs_ok;
	} else
		status = FUNC11(copy, 1);
out:
	return status;
out_err:
	FUNC2(async_copy);
	goto out;
}