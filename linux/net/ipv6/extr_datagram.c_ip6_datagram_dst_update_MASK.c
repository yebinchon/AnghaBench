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
struct sock {TYPE_1__* sk_prot; int /*<<< orphan*/  sk_v6_rcv_saddr; } ;
struct ipv6_txoptions {int dummy; } ;
struct ipv6_pinfo {int flow_label; int /*<<< orphan*/  saddr; int /*<<< orphan*/  opt; scalar_t__ sndflow; } ;
struct ip6_flowlabel {struct ipv6_txoptions* opt; } ;
struct inet_sock {int /*<<< orphan*/  inet_rcv_saddr; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  saddr; } ;
struct dst_entry {struct ipv6_txoptions* opt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rehash ) (struct sock*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int IPV6_FLOWLABEL_MASK ; 
 scalar_t__ FUNC0 (struct ip6_flowlabel*) ; 
 int /*<<< orphan*/  LOOPBACK4_IPV6 ; 
 int FUNC1 (struct ip6_flowlabel*) ; 
 struct ip6_flowlabel* FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ip6_flowlabel*) ; 
 struct in6_addr* FUNC4 (struct flowi6*,struct ipv6_txoptions*,struct in6_addr*) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 struct inet_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct flowi6*,struct sock*) ; 
 struct ip6_flowlabel* FUNC8 (struct sock*,struct flowi6*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct ip6_flowlabel*,struct flowi6*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 struct ipv6_txoptions* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 

int FUNC15(struct sock *sk, bool fix_sk_saddr)
{
	struct ip6_flowlabel *flowlabel = NULL;
	struct in6_addr *final_p, final;
	struct ipv6_txoptions *opt;
	struct dst_entry *dst;
	struct inet_sock *inet = FUNC6(sk);
	struct ipv6_pinfo *np = FUNC5(sk);
	struct flowi6 fl6;
	int err = 0;

	if (np->sndflow && (np->flow_label & IPV6_FLOWLABEL_MASK)) {
		flowlabel = FUNC2(sk, np->flow_label);
		if (FUNC0(flowlabel))
			return -EINVAL;
	}
	FUNC7(&fl6, sk);

	FUNC12();
	opt = flowlabel ? flowlabel->opt : FUNC11(np->opt);
	final_p = FUNC4(&fl6, opt, &final);
	FUNC13();

	dst = FUNC8(sk, &fl6, final_p);
	if (FUNC0(dst)) {
		err = FUNC1(dst);
		goto out;
	}

	if (fix_sk_saddr) {
		if (FUNC10(&np->saddr))
			np->saddr = fl6.saddr;

		if (FUNC10(&sk->sk_v6_rcv_saddr)) {
			sk->sk_v6_rcv_saddr = fl6.saddr;
			inet->inet_rcv_saddr = LOOPBACK4_IPV6;
			if (sk->sk_prot->rehash)
				sk->sk_prot->rehash(sk);
		}
	}

	FUNC9(sk, dst, &fl6);

out:
	FUNC3(flowlabel);
	return err;
}