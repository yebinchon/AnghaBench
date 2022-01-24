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
typedef  int u32 ;
struct xfrm_user_sec_ctx {scalar_t__ ctx_doi; scalar_t__ ctx_alg; int ctx_len; } ;
struct xfrm_sec_ctx {int ctx_len; char* ctx_str; int /*<<< orphan*/  ctx_sid; scalar_t__ ctx_alg; scalar_t__ ctx_doi; } ;
struct task_security_struct {int /*<<< orphan*/  sid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOCIATION__SETCONTEXT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SECCLASS_ASSOCIATION ; 
 scalar_t__ XFRM_SC_ALG_SELINUX ; 
 scalar_t__ XFRM_SC_DOI_LSM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_sec_ctx*) ; 
 struct xfrm_sec_ctx* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct xfrm_user_sec_ctx*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct task_security_struct* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  selinux_xfrm_refcount ; 

__attribute__((used)) static int FUNC8(struct xfrm_sec_ctx **ctxp,
				   struct xfrm_user_sec_ctx *uctx,
				   gfp_t gfp)
{
	int rc;
	const struct task_security_struct *tsec = FUNC7(FUNC2());
	struct xfrm_sec_ctx *ctx = NULL;
	u32 str_len;

	if (ctxp == NULL || uctx == NULL ||
	    uctx->ctx_doi != XFRM_SC_DOI_LSM ||
	    uctx->ctx_alg != XFRM_SC_ALG_SELINUX)
		return -EINVAL;

	str_len = uctx->ctx_len;
	if (str_len >= PAGE_SIZE)
		return -ENOMEM;

	ctx = FUNC4(sizeof(*ctx) + str_len + 1, gfp);
	if (!ctx)
		return -ENOMEM;

	ctx->ctx_doi = XFRM_SC_DOI_LSM;
	ctx->ctx_alg = XFRM_SC_ALG_SELINUX;
	ctx->ctx_len = str_len;
	FUNC5(ctx->ctx_str, &uctx[1], str_len);
	ctx->ctx_str[str_len] = '\0';
	rc = FUNC6(&selinux_state, ctx->ctx_str, str_len,
				     &ctx->ctx_sid, gfp);
	if (rc)
		goto err;

	rc = FUNC1(&selinux_state,
			  tsec->sid, ctx->ctx_sid,
			  SECCLASS_ASSOCIATION, ASSOCIATION__SETCONTEXT, NULL);
	if (rc)
		goto err;

	*ctxp = ctx;
	FUNC0(&selinux_xfrm_refcount);
	return 0;

err:
	FUNC3(ctx);
	return rc;
}