#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_tmpl {int dummy; } ;
struct xfrm_state {int /*<<< orphan*/  sel; } ;
struct TYPE_4__ {void* use_time; } ;
struct xfrm_policy {scalar_t__ type; scalar_t__ action; int xfrm_nr; struct xfrm_tmpl* xfrm_vec; TYPE_2__ curlft; } ;
struct xfrm_if_cb {struct xfrm_if* (* decode_session ) (struct sk_buff*,unsigned short) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  if_id; } ;
struct xfrm_if {struct net* net; TYPE_1__ p; } ;
struct sock {scalar_t__* sk_policy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct sec_path {int len; struct xfrm_state** xvec; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINBUFFERERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINHDRERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINNOPOLS ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINPOLBLOCK ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINPOLERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINSTATEMISMATCH ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINTMPLMISMATCH ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int XFRM_MAX_DEPTH ; 
 scalar_t__ XFRM_POLICY_ALLOW ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int XFRM_POLICY_MASK ; 
 scalar_t__ XFRM_POLICY_TYPE_MAIN ; 
 int XFRM_POLICY_TYPE_MAX ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct flowi*,unsigned short,int) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct flowi*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct sec_path*,int,int*) ; 
 struct sock* FUNC9 (struct sock*) ; 
 struct sec_path* FUNC10 (struct sk_buff*) ; 
 struct xfrm_if* FUNC11 (struct sk_buff*,unsigned short) ; 
 struct xfrm_if_cb* FUNC12 () ; 
 struct xfrm_policy* FUNC13 (struct net*,struct flowi*,unsigned short,int,int /*<<< orphan*/ ) ; 
 struct xfrm_policy* FUNC14 (struct net*,scalar_t__,struct flowi*,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct xfrm_tmpl*,struct sec_path*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC16 (struct xfrm_policy**,int) ; 
 int /*<<< orphan*/  FUNC17 (int,struct sk_buff*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct flowi*,unsigned short) ; 
 struct xfrm_policy* FUNC19 (struct sock*,int,struct flowi*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct xfrm_tmpl**,struct xfrm_tmpl**,int,unsigned short) ; 

int FUNC21(struct sock *sk, int dir, struct sk_buff *skb,
			unsigned short family)
{
	struct net *net = FUNC3(skb->dev);
	struct xfrm_policy *pol;
	struct xfrm_policy *pols[XFRM_POLICY_TYPE_MAX];
	int npols = 0;
	int xfrm_nr;
	int pi;
	int reverse;
	struct flowi fl;
	int xerr_idx = -1;
	const struct xfrm_if_cb *ifcb;
	struct sec_path *sp;
	struct xfrm_if *xi;
	u32 if_id = 0;

	FUNC6();
	ifcb = FUNC12();

	if (ifcb) {
		xi = ifcb->decode_session(skb, family);
		if (xi) {
			if_id = xi->p.if_id;
			net = xi->net;
		}
	}
	FUNC7();

	reverse = dir & ~XFRM_POLICY_MASK;
	dir &= XFRM_POLICY_MASK;

	if (FUNC2(skb, &fl, family, reverse) < 0) {
		FUNC1(net, LINUX_MIB_XFRMINHDRERROR);
		return 0;
	}

	FUNC5(skb, &fl, family);

	/* First, check used SA against their selectors. */
	sp = FUNC10(skb);
	if (sp) {
		int i;

		for (i = sp->len - 1; i >= 0; i--) {
			struct xfrm_state *x = sp->xvec[i];
			if (!FUNC18(&x->sel, &fl, family)) {
				FUNC1(net, LINUX_MIB_XFRMINSTATEMISMATCH);
				return 0;
			}
		}
	}

	pol = NULL;
	sk = FUNC9(sk);
	if (sk && sk->sk_policy[dir]) {
		pol = FUNC19(sk, dir, &fl, family, if_id);
		if (FUNC0(pol)) {
			FUNC1(net, LINUX_MIB_XFRMINPOLERROR);
			return 0;
		}
	}

	if (!pol)
		pol = FUNC13(net, &fl, family, dir, if_id);

	if (FUNC0(pol)) {
		FUNC1(net, LINUX_MIB_XFRMINPOLERROR);
		return 0;
	}

	if (!pol) {
		if (sp && FUNC8(sp, 0, &xerr_idx)) {
			FUNC17(xerr_idx, skb, &fl);
			FUNC1(net, LINUX_MIB_XFRMINNOPOLS);
			return 0;
		}
		return 1;
	}

	pol->curlft.use_time = FUNC4();

	pols[0] = pol;
	npols++;
#ifdef CONFIG_XFRM_SUB_POLICY
	if (pols[0]->type != XFRM_POLICY_TYPE_MAIN) {
		pols[1] = xfrm_policy_lookup_bytype(net, XFRM_POLICY_TYPE_MAIN,
						    &fl, family,
						    XFRM_POLICY_IN, if_id);
		if (pols[1]) {
			if (IS_ERR(pols[1])) {
				XFRM_INC_STATS(net, LINUX_MIB_XFRMINPOLERROR);
				return 0;
			}
			pols[1]->curlft.use_time = ktime_get_real_seconds();
			npols++;
		}
	}
#endif

	if (pol->action == XFRM_POLICY_ALLOW) {
		static struct sec_path dummy;
		struct xfrm_tmpl *tp[XFRM_MAX_DEPTH];
		struct xfrm_tmpl *stp[XFRM_MAX_DEPTH];
		struct xfrm_tmpl **tpp = tp;
		int ti = 0;
		int i, k;

		sp = FUNC10(skb);
		if (!sp)
			sp = &dummy;

		for (pi = 0; pi < npols; pi++) {
			if (pols[pi] != pol &&
			    pols[pi]->action != XFRM_POLICY_ALLOW) {
				FUNC1(net, LINUX_MIB_XFRMINPOLBLOCK);
				goto reject;
			}
			if (ti + pols[pi]->xfrm_nr >= XFRM_MAX_DEPTH) {
				FUNC1(net, LINUX_MIB_XFRMINBUFFERERROR);
				goto reject_error;
			}
			for (i = 0; i < pols[pi]->xfrm_nr; i++)
				tpp[ti++] = &pols[pi]->xfrm_vec[i];
		}
		xfrm_nr = ti;
		if (npols > 1) {
			FUNC20(stp, tpp, xfrm_nr, family);
			tpp = stp;
		}

		/* For each tunnel xfrm, find the first matching tmpl.
		 * For each tmpl before that, find corresponding xfrm.
		 * Order is _important_. Later we will implement
		 * some barriers, but at the moment barriers
		 * are implied between each two transformations.
		 */
		for (i = xfrm_nr-1, k = 0; i >= 0; i--) {
			k = FUNC15(tpp[i], sp, k, family);
			if (k < 0) {
				if (k < -1)
					/* "-2 - errored_index" returned */
					xerr_idx = -(2+k);
				FUNC1(net, LINUX_MIB_XFRMINTMPLMISMATCH);
				goto reject;
			}
		}

		if (FUNC8(sp, k, &xerr_idx)) {
			FUNC1(net, LINUX_MIB_XFRMINTMPLMISMATCH);
			goto reject;
		}

		FUNC16(pols, npols);
		return 1;
	}
	FUNC1(net, LINUX_MIB_XFRMINPOLBLOCK);

reject:
	FUNC17(xerr_idx, skb, &fl);
reject_error:
	FUNC16(pols, npols);
	return 0;
}