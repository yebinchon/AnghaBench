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
struct xfrm_sec_ctx {scalar_t__ ctx_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xfrm_sec_ctx* FUNC1 (struct xfrm_sec_ctx*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_xfrm_refcount ; 

int FUNC2(struct xfrm_sec_ctx *old_ctx,
			      struct xfrm_sec_ctx **new_ctxp)
{
	struct xfrm_sec_ctx *new_ctx;

	if (!old_ctx)
		return 0;

	new_ctx = FUNC1(old_ctx, sizeof(*old_ctx) + old_ctx->ctx_len,
			  GFP_ATOMIC);
	if (!new_ctx)
		return -ENOMEM;
	FUNC0(&selinux_xfrm_refcount);
	*new_ctxp = new_ctx;

	return 0;
}