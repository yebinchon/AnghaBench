#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct xdr_netobj {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct nfsd_net {struct cld_net* cld_net; } ;
struct TYPE_15__ {char* cr_raw_principal; char* cr_principal; } ;
struct TYPE_14__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct nfs4_client {int /*<<< orphan*/  cl_flags; TYPE_4__ cl_cred; TYPE_3__ cl_name; int /*<<< orphan*/  net; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_16__ {scalar_t__ cp_len; int /*<<< orphan*/  cp_data; } ;
struct TYPE_13__ {int /*<<< orphan*/  cn_id; scalar_t__ cn_len; } ;
struct TYPE_17__ {TYPE_5__ cc_princhash; TYPE_2__ cc_name; } ;
struct TYPE_18__ {TYPE_6__ cm_clntinfo; } ;
struct cld_msg_v2 {int cm_status; TYPE_7__ cm_u; int /*<<< orphan*/  cm_cmd; } ;
struct TYPE_12__ {struct cld_msg_v2 cu_msg_v2; } ;
struct cld_upcall {TYPE_1__ cu_u; } ;
struct cld_net {int /*<<< orphan*/  cn_pipe; struct crypto_shash* cn_tfm; } ;
struct TYPE_19__ {struct crypto_shash* tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cld_Create ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFSD4_CLIENT_STABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,struct crypto_shash*) ; 
 struct cld_upcall* FUNC1 (struct nfsd_net*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cld_msg_v2*) ; 
 int FUNC3 (TYPE_8__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct crypto_shash*) ; 
 TYPE_8__* desc ; 
 int /*<<< orphan*/  FUNC5 (struct cld_upcall*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct nfsd_net* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct nfs4_client *clp)
{
	int ret;
	struct cld_upcall *cup;
	struct nfsd_net *nn = FUNC9(clp->net, nfsd_net_id);
	struct cld_net *cn = nn->cld_net;
	struct cld_msg_v2 *cmsg;
	struct crypto_shash *tfm = cn->cn_tfm;
	struct xdr_netobj cksum;
	char *principal = NULL;
	FUNC0(desc, tfm);

	/* Don't upcall if it's already stored */
	if (FUNC14(NFSD4_CLIENT_STABLE, &clp->cl_flags))
		return;

	cup = FUNC1(nn);
	if (!cup) {
		ret = -ENOMEM;
		goto out_err;
	}

	cmsg = &cup->cu_u.cu_msg_v2;
	cmsg->cm_cmd = Cld_Create;
	cmsg->cm_u.cm_clntinfo.cc_name.cn_len = clp->cl_name.len;
	FUNC8(cmsg->cm_u.cm_clntinfo.cc_name.cn_id, clp->cl_name.data,
			clp->cl_name.len);
	if (clp->cl_cred.cr_raw_principal)
		principal = clp->cl_cred.cr_raw_principal;
	else if (clp->cl_cred.cr_principal)
		principal = clp->cl_cred.cr_principal;
	if (principal) {
		desc->tfm = tfm;
		cksum.len = FUNC4(tfm);
		cksum.data = FUNC7(cksum.len, GFP_KERNEL);
		if (cksum.data == NULL) {
			ret = -ENOMEM;
			goto out;
		}
		ret = FUNC3(desc, principal, FUNC13(principal),
					  cksum.data);
		FUNC12(desc);
		if (ret) {
			FUNC6(cksum.data);
			goto out;
		}
		cmsg->cm_u.cm_clntinfo.cc_princhash.cp_len = cksum.len;
		FUNC8(cmsg->cm_u.cm_clntinfo.cc_princhash.cp_data,
		       cksum.data, cksum.len);
		FUNC6(cksum.data);
	} else
		cmsg->cm_u.cm_clntinfo.cc_princhash.cp_len = 0;

	ret = FUNC2(cn->cn_pipe, cmsg);
	if (!ret) {
		ret = cmsg->cm_status;
		FUNC11(NFSD4_CLIENT_STABLE, &clp->cl_flags);
	}

out:
	FUNC5(cup);
out_err:
	if (ret)
		FUNC10("NFSD: Unable to create client record on stable storage: %d\n",
				ret);
}