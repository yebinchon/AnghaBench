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
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct TYPE_18__ {int flags; TYPE_3__* dev; } ;
struct rt6_info {TYPE_6__ dst; } ;
struct ipv6_txoptions {scalar_t__ srcrt; scalar_t__ hopopt; scalar_t__ dst1opt; scalar_t__ dst0opt; int /*<<< orphan*/  opt_nflen; int /*<<< orphan*/  opt_flen; } ;
struct ipv6_pinfo {scalar_t__ pmtudisc; unsigned int frag_size; } ;
struct TYPE_17__ {int /*<<< orphan*/  transmit_time; int /*<<< orphan*/  tsflags; int /*<<< orphan*/  mark; } ;
struct ipcm6_cookie {TYPE_5__ sockc; int /*<<< orphan*/  gso_size; int /*<<< orphan*/  tclass; int /*<<< orphan*/  hlimit; struct ipv6_txoptions* opt; } ;
struct TYPE_16__ {unsigned int fragsize; int /*<<< orphan*/  transmit_time; scalar_t__ length; int /*<<< orphan*/  flags; scalar_t__ tx_flags; int /*<<< orphan*/  mark; int /*<<< orphan*/  gso_size; TYPE_6__* dst; } ;
struct flowi6 {int dummy; } ;
struct TYPE_13__ {struct flowi6 ip6; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
struct inet_cork_full {TYPE_4__ base; TYPE_2__ fl; } ;
struct inet6_cork {int /*<<< orphan*/  tclass; int /*<<< orphan*/  hop_limit; TYPE_8__* opt; } ;
struct TYPE_19__ {int tot_len; int /*<<< orphan*/  srcrt; void* hopopt; void* dst1opt; void* dst0opt; int /*<<< orphan*/  opt_nflen; int /*<<< orphan*/  opt_flen; } ;
struct TYPE_15__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int DST_XFRM_TUNNEL ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  IPCORK_ALLFRAG ; 
 unsigned int IPV6_MIN_MTU ; 
 scalar_t__ IPV6_PMTUDISC_PROBE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_8__*) ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 unsigned int FUNC4 (TYPE_6__*) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 void* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC10 (int) ; 
 TYPE_6__* FUNC11 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct inet_cork_full *cork,
			  struct inet6_cork *v6_cork, struct ipcm6_cookie *ipc6,
			  struct rt6_info *rt, struct flowi6 *fl6)
{
	struct ipv6_pinfo *np = FUNC5(sk);
	unsigned int mtu;
	struct ipv6_txoptions *opt = ipc6->opt;

	/*
	 * setup for corking
	 */
	if (opt) {
		if (FUNC1(v6_cork->opt))
			return -EINVAL;

		v6_cork->opt = FUNC8(sizeof(*opt), sk->sk_allocation);
		if (FUNC10(!v6_cork->opt))
			return -ENOBUFS;

		v6_cork->opt->tot_len = sizeof(*opt);
		v6_cork->opt->opt_flen = opt->opt_flen;
		v6_cork->opt->opt_nflen = opt->opt_nflen;

		v6_cork->opt->dst0opt = FUNC6(opt->dst0opt,
						    sk->sk_allocation);
		if (opt->dst0opt && !v6_cork->opt->dst0opt)
			return -ENOBUFS;

		v6_cork->opt->dst1opt = FUNC6(opt->dst1opt,
						    sk->sk_allocation);
		if (opt->dst1opt && !v6_cork->opt->dst1opt)
			return -ENOBUFS;

		v6_cork->opt->hopopt = FUNC6(opt->hopopt,
						   sk->sk_allocation);
		if (opt->hopopt && !v6_cork->opt->hopopt)
			return -ENOBUFS;

		v6_cork->opt->srcrt = FUNC7(opt->srcrt,
						    sk->sk_allocation);
		if (opt->srcrt && !v6_cork->opt->srcrt)
			return -ENOBUFS;

		/* need source address above miyazawa*/
	}
	FUNC3(&rt->dst);
	cork->base.dst = &rt->dst;
	cork->fl.u.ip6 = *fl6;
	v6_cork->hop_limit = ipc6->hlimit;
	v6_cork->tclass = ipc6->tclass;
	if (rt->dst.flags & DST_XFRM_TUNNEL)
		mtu = np->pmtudisc >= IPV6_PMTUDISC_PROBE ?
		      FUNC0(rt->dst.dev->mtu) : FUNC4(&rt->dst);
	else
		mtu = np->pmtudisc >= IPV6_PMTUDISC_PROBE ?
			FUNC0(rt->dst.dev->mtu) : FUNC4(FUNC11(&rt->dst));
	if (np->frag_size < mtu) {
		if (np->frag_size)
			mtu = np->frag_size;
	}
	if (mtu < IPV6_MIN_MTU)
		return -EINVAL;
	cork->base.fragsize = mtu;
	cork->base.gso_size = ipc6->gso_size;
	cork->base.tx_flags = 0;
	cork->base.mark = ipc6->sockc.mark;
	FUNC9(sk, ipc6->sockc.tsflags, &cork->base.tx_flags);

	if (FUNC2(FUNC11(&rt->dst)))
		cork->base.flags |= IPCORK_ALLFRAG;
	cork->base.length = 0;

	cork->base.transmit_time = ipc6->sockc.transmit_time;

	return 0;
}