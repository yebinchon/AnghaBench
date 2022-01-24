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
typedef  int /*<<< orphan*/  window_size ;
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  timeout ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct gss_cl_ctx {unsigned long gc_expiry; unsigned int gc_win; TYPE_1__ gc_acceptor; int /*<<< orphan*/  gc_gss_ctx; TYPE_1__ gc_wire_ctx; } ;
struct gss_api_mech {int dummy; } ;
typedef  int /*<<< orphan*/  seclen ;
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 int EACCES ; 
 int EFAULT ; 
 int EKEYEXPIRED ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned int GSSD_MIN_TIMEOUT ; 
 unsigned long HZ ; 
 scalar_t__ FUNC1 (void const*) ; 
 int FUNC2 (void const*,unsigned int,struct gss_api_mech*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 void* FUNC3 (void const*,void const*,...) ; 
 void* FUNC4 (void const*,void const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static const void *
FUNC8(const void *p, const void *end, struct gss_cl_ctx *ctx, struct gss_api_mech *gm)
{
	const void *q;
	unsigned int seclen;
	unsigned int timeout;
	unsigned long now = jiffies;
	u32 window_size;
	int ret;

	/* First unsigned int gives the remaining lifetime in seconds of the
	 * credential - e.g. the remaining TGT lifetime for Kerberos or
	 * the -t value passed to GSSD.
	 */
	p = FUNC3(p, end, &timeout, sizeof(timeout));
	if (FUNC1(p))
		goto err;
	if (timeout == 0)
		timeout = GSSD_MIN_TIMEOUT;
	ctx->gc_expiry = now + ((unsigned long)timeout * HZ);
	/* Sequence number window. Determines the maximum number of
	 * simultaneous requests
	 */
	p = FUNC3(p, end, &window_size, sizeof(window_size));
	if (FUNC1(p))
		goto err;
	ctx->gc_win = window_size;
	/* gssd signals an error by passing ctx->gc_win = 0: */
	if (ctx->gc_win == 0) {
		/*
		 * in which case, p points to an error code. Anything other
		 * than -EKEYEXPIRED gets converted to -EACCES.
		 */
		p = FUNC3(p, end, &ret, sizeof(ret));
		if (!FUNC1(p))
			p = (ret == -EKEYEXPIRED) ? FUNC0(-EKEYEXPIRED) :
						    FUNC0(-EACCES);
		goto err;
	}
	/* copy the opaque wire context */
	p = FUNC4(p, end, &ctx->gc_wire_ctx);
	if (FUNC1(p))
		goto err;
	/* import the opaque security context */
	p  = FUNC3(p, end, &seclen, sizeof(seclen));
	if (FUNC1(p))
		goto err;
	q = (const void *)((const char *)p + seclen);
	if (FUNC7(q > end || q < p)) {
		p = FUNC0(-EFAULT);
		goto err;
	}
	ret = FUNC2(p, seclen, gm, &ctx->gc_gss_ctx, NULL, GFP_NOFS);
	if (ret < 0) {
		FUNC6(ret);
		p = FUNC0(ret);
		goto err;
	}

	/* is there any trailing data? */
	if (q == end) {
		p = q;
		goto done;
	}

	/* pull in acceptor name (if there is one) */
	p = FUNC4(q, end, &ctx->gc_acceptor);
	if (FUNC1(p))
		goto err;
done:
	FUNC5(ctx->gc_expiry, now, timeout,
			     ctx->gc_acceptor.len, ctx->gc_acceptor.data);
err:
	return p;
}