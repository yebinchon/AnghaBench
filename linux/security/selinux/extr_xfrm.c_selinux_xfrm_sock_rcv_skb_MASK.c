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
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {struct xfrm_sec_ctx* security; } ;
struct xfrm_sec_ctx {int /*<<< orphan*/  ctx_sid; } ;
struct sk_buff {int dummy; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct common_audit_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOCIATION__RECVFROM ; 
 int /*<<< orphan*/  SECCLASS_ASSOCIATION ; 
 int /*<<< orphan*/  SECINITSID_UNLABELED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  selinux_state ; 
 struct sec_path* FUNC2 (struct sk_buff*) ; 

int FUNC3(u32 sk_sid, struct sk_buff *skb,
			      struct common_audit_data *ad)
{
	int i;
	struct sec_path *sp = FUNC2(skb);
	u32 peer_sid = SECINITSID_UNLABELED;

	if (sp) {
		for (i = 0; i < sp->len; i++) {
			struct xfrm_state *x = sp->xvec[i];

			if (x && FUNC1(x)) {
				struct xfrm_sec_ctx *ctx = x->security;
				peer_sid = ctx->ctx_sid;
				break;
			}
		}
	}

	/* This check even when there's no association involved is intended,
	 * according to Trent Jaeger, to make sure a process can't engage in
	 * non-IPsec communication unless explicitly allowed by policy. */
	return FUNC0(&selinux_state,
			    sk_sid, peer_sid,
			    SECCLASS_ASSOCIATION, ASSOCIATION__RECVFROM, ad);
}