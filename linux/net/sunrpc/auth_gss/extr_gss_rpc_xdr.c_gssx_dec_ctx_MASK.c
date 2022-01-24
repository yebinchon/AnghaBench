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
struct xdr_stream {int dummy; } ;
struct gssx_ctx {int /*<<< orphan*/  options; int /*<<< orphan*/  open; int /*<<< orphan*/  locally_initiated; int /*<<< orphan*/  ctx_flags; int /*<<< orphan*/  lifetime; int /*<<< orphan*/  targ_name; int /*<<< orphan*/  src_name; int /*<<< orphan*/  mech; int /*<<< orphan*/  need_release; int /*<<< orphan*/  state; int /*<<< orphan*/  exported_context_token; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC7(struct xdr_stream *xdr,
			struct gssx_ctx *ctx)
{
	__be32 *p;
	int err;

	/* ctx->exported_context_token */
	err = FUNC2(xdr, &ctx->exported_context_token);
	if (err)
		return err;

	/* ctx->state */
	err = FUNC2(xdr, &ctx->state);
	if (err)
		return err;

	/* ctx->need_release */
	err = FUNC1(xdr, &ctx->need_release);
	if (err)
		return err;

	/* ctx->mech */
	err = FUNC2(xdr, &ctx->mech);
	if (err)
		return err;

	/* ctx->src_name */
	err = FUNC3(xdr, &ctx->src_name);
	if (err)
		return err;

	/* ctx->targ_name */
	err = FUNC3(xdr, &ctx->targ_name);
	if (err)
		return err;

	/* ctx->lifetime */
	p = FUNC6(xdr, 8+8);
	if (FUNC4(p == NULL))
		return -ENOSPC;
	p = FUNC5(p, &ctx->lifetime);

	/* ctx->ctx_flags */
	p = FUNC5(p, &ctx->ctx_flags);

	/* ctx->locally_initiated */
	err = FUNC1(xdr, &ctx->locally_initiated);
	if (err)
		return err;

	/* ctx->open */
	err = FUNC1(xdr, &ctx->open);
	if (err)
		return err;

	/* we assume we have no options for now, so simply consume them */
	/* ctx->options */
	err = FUNC0(xdr, &ctx->options);

	return err;
}