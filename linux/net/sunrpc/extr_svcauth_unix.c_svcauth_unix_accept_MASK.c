#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct user_namespace {int dummy; } ;
struct svc_cred {int /*<<< orphan*/  cr_flavor; TYPE_5__* cr_group_info; void* cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct TYPE_8__ {struct kvec* head; } ;
struct TYPE_7__ {struct kvec* head; } ;
struct svc_rqst {struct svc_cred rq_cred; TYPE_4__* rq_xprt; TYPE_2__ rq_res; TYPE_1__ rq_arg; } ;
struct kvec {int iov_len; void* iov_base; } ;
typedef  void* kgid_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_11__ {void** gid; } ;
struct TYPE_10__ {TYPE_3__* xpt_cred; } ;
struct TYPE_9__ {struct user_namespace* user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_AUTH_NULL ; 
 int /*<<< orphan*/  RPC_AUTH_UNIX ; 
 int SVC_CLOSE ; 
 int SVC_DENIED ; 
 int SVC_GARBAGE ; 
 int SVC_OK ; 
 int UNX_NGROUPS ; 
 int FUNC0 (int) ; 
 TYPE_5__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct user_namespace init_user_ns ; 
 void* FUNC4 (struct user_namespace*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*,int) ; 
 int /*<<< orphan*/  rpc_autherr_badcred ; 
 int /*<<< orphan*/  rpc_autherr_badverf ; 
 int FUNC6 (struct kvec*) ; 
 scalar_t__ FUNC7 (struct kvec*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct svc_rqst *rqstp, __be32 *authp)
{
	struct kvec	*argv = &rqstp->rq_arg.head[0];
	struct kvec	*resv = &rqstp->rq_res.head[0];
	struct svc_cred	*cred = &rqstp->rq_cred;
	struct user_namespace *userns;
	u32		slen, i;
	int		len   = argv->iov_len;

	if ((len -= 3*4) < 0)
		return SVC_GARBAGE;

	FUNC7(argv);			/* length */
	FUNC7(argv);			/* time stamp */
	slen = FUNC0(FUNC6(argv));	/* machname length */
	if (slen > 64 || (len -= (slen + 3)*4) < 0)
		goto badcred;
	argv->iov_base = (void*)((__be32*)argv->iov_base + slen);	/* skip machname */
	argv->iov_len -= slen*4;
	/*
	 * Note: we skip uid_valid()/gid_valid() checks here for
	 * backwards compatibility with clients that use -1 id's.
	 * Instead, -1 uid or gid is later mapped to the
	 * (export-specific) anonymous id by nfsd_setuser.
	 * Supplementary gid's will be left alone.
	 */
	userns = (rqstp->rq_xprt && rqstp->rq_xprt->xpt_cred) ?
		rqstp->rq_xprt->xpt_cred->user_ns : &init_user_ns;
	cred->cr_uid = FUNC5(userns, FUNC6(argv)); /* uid */
	cred->cr_gid = FUNC4(userns, FUNC6(argv)); /* gid */
	slen = FUNC6(argv);			/* gids length */
	if (slen > UNX_NGROUPS || (len -= (slen + 2)*4) < 0)
		goto badcred;
	cred->cr_group_info = FUNC1(slen);
	if (cred->cr_group_info == NULL)
		return SVC_CLOSE;
	for (i = 0; i < slen; i++) {
		kgid_t kgid = FUNC4(userns, FUNC6(argv));
		cred->cr_group_info->gid[i] = kgid;
	}
	FUNC2(cred->cr_group_info);
	if (FUNC7(argv) != FUNC3(RPC_AUTH_NULL) || FUNC7(argv) != 0) {
		*authp = rpc_autherr_badverf;
		return SVC_DENIED;
	}

	/* Put NULL verifier */
	FUNC8(resv, RPC_AUTH_NULL);
	FUNC8(resv, 0);

	rqstp->rq_cred.cr_flavor = RPC_AUTH_UNIX;
	return SVC_OK;

badcred:
	*authp = rpc_autherr_badcred;
	return SVC_DENIED;
}