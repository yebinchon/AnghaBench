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
typedef  scalar_t__ u32 ;
struct xfrm_state {struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int ctx_len; int /*<<< orphan*/  ctx_str; scalar_t__ ctx_sid; int /*<<< orphan*/  ctx_alg; int /*<<< orphan*/  ctx_doi; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  XFRM_SC_ALG_SELINUX ; 
 int /*<<< orphan*/  XFRM_SC_DOI_LSM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct xfrm_sec_ctx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,char**,int*) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  selinux_xfrm_refcount ; 

int FUNC5(struct xfrm_state *x,
				     struct xfrm_sec_ctx *polsec, u32 secid)
{
	int rc;
	struct xfrm_sec_ctx *ctx;
	char *ctx_str = NULL;
	int str_len;

	if (!polsec)
		return 0;

	if (secid == 0)
		return -EINVAL;

	rc = FUNC4(&selinux_state, secid, &ctx_str,
				     &str_len);
	if (rc)
		return rc;

	ctx = FUNC2(sizeof(*ctx) + str_len, GFP_ATOMIC);
	if (!ctx) {
		rc = -ENOMEM;
		goto out;
	}

	ctx->ctx_doi = XFRM_SC_DOI_LSM;
	ctx->ctx_alg = XFRM_SC_ALG_SELINUX;
	ctx->ctx_sid = secid;
	ctx->ctx_len = str_len;
	FUNC3(ctx->ctx_str, ctx_str, str_len);

	x->security = ctx;
	FUNC0(&selinux_xfrm_refcount);
out:
	FUNC1(ctx_str);
	return rc;
}