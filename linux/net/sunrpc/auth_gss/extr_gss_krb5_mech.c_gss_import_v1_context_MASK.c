#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct krb5_ctx {int initiate; int endtime; TYPE_1__ mech_used; int /*<<< orphan*/  enc; int /*<<< orphan*/  seq; int /*<<< orphan*/  seq_send; int /*<<< orphan*/ * gk5e; int /*<<< orphan*/  enctype; } ;
typedef  int /*<<< orphan*/  seq_send ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENCTYPE_DES_CBC_RAW ; 
 int /*<<< orphan*/  ENOSYS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int FUNC2 (void const*) ; 
 int SEAL_ALG_DES ; 
 int SGN_ALG_DES_MAC_MD5 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (void const*,void const*,struct krb5_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (void const*,void const*,int*,int) ; 
 void* FUNC9 (void const*,void const*,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(const void *p, const void *end, struct krb5_ctx *ctx)
{
	u32 seq_send;
	int tmp;

	p = FUNC8(p, end, &ctx->initiate, sizeof(ctx->initiate));
	if (FUNC1(p))
		goto out_err;

	/* Old format supports only DES!  Any other enctype uses new format */
	ctx->enctype = ENCTYPE_DES_CBC_RAW;

	ctx->gk5e = FUNC5(ctx->enctype);
	if (ctx->gk5e == NULL) {
		p = FUNC0(-EINVAL);
		goto out_err;
	}

	/* The downcall format was designed before we completely understood
	 * the uses of the context fields; so it includes some stuff we
	 * just give some minimal sanity-checking, and some we ignore
	 * completely (like the next twenty bytes): */
	if (FUNC10(p + 20 > end || p + 20 < p)) {
		p = FUNC0(-EFAULT);
		goto out_err;
	}
	p += 20;
	p = FUNC8(p, end, &tmp, sizeof(tmp));
	if (FUNC1(p))
		goto out_err;
	if (tmp != SGN_ALG_DES_MAC_MD5) {
		p = FUNC0(-ENOSYS);
		goto out_err;
	}
	p = FUNC8(p, end, &tmp, sizeof(tmp));
	if (FUNC1(p))
		goto out_err;
	if (tmp != SEAL_ALG_DES) {
		p = FUNC0(-ENOSYS);
		goto out_err;
	}
	p = FUNC8(p, end, &ctx->endtime, sizeof(ctx->endtime));
	if (FUNC1(p))
		goto out_err;
	p = FUNC8(p, end, &seq_send, sizeof(seq_send));
	if (FUNC1(p))
		goto out_err;
	FUNC3(&ctx->seq_send, seq_send);
	p = FUNC9(p, end, &ctx->mech_used);
	if (FUNC1(p))
		goto out_err;
	p = FUNC6(p, end, ctx, &ctx->enc);
	if (FUNC1(p))
		goto out_err_free_mech;
	p = FUNC6(p, end, ctx, &ctx->seq);
	if (FUNC1(p))
		goto out_err_free_key1;
	if (p != end) {
		p = FUNC0(-EFAULT);
		goto out_err_free_key2;
	}

	return 0;

out_err_free_key2:
	FUNC4(ctx->seq);
out_err_free_key1:
	FUNC4(ctx->enc);
out_err_free_mech:
	FUNC7(ctx->mech_used.data);
out_err:
	return FUNC2(p);
}