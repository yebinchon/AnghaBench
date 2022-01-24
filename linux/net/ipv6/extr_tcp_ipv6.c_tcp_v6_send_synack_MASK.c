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
struct tcp_fastopen_cookie {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_priority; int /*<<< orphan*/  sk_mark; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  tclass; int /*<<< orphan*/  opt; scalar_t__ repflow; } ;
struct inet_request_sock {struct ipv6_txoptions* ipv6_opt; scalar_t__ pktopts; int /*<<< orphan*/  ir_v6_rmt_addr; int /*<<< orphan*/  ir_v6_loc_addr; } ;
struct flowi6 {int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  daddr; } ;
struct TYPE_2__ {struct flowi6 ip6; } ;
struct flowi {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;
typedef  enum tcp_synack_type { ____Placeholder_tcp_synack_type } tcp_synack_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dst_entry* FUNC1 (struct sock const*,struct flowi6*,struct request_sock*,int /*<<< orphan*/ ) ; 
 struct inet_request_sock* FUNC2 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock const*,struct sk_buff*,struct flowi6*,int /*<<< orphan*/ ,struct ipv6_txoptions*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int) ; 
 struct ipv6_txoptions* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct ipv6_pinfo* FUNC10 (struct sock const*) ; 
 struct sk_buff* FUNC11 (struct sock const*,struct dst_entry*,struct request_sock*,struct tcp_fastopen_cookie*,int) ; 

__attribute__((used)) static int FUNC12(const struct sock *sk, struct dst_entry *dst,
			      struct flowi *fl,
			      struct request_sock *req,
			      struct tcp_fastopen_cookie *foc,
			      enum tcp_synack_type synack_type)
{
	struct inet_request_sock *ireq = FUNC2(req);
	struct ipv6_pinfo *np = FUNC10(sk);
	struct ipv6_txoptions *opt;
	struct flowi6 *fl6 = &fl->u.ip6;
	struct sk_buff *skb;
	int err = -ENOMEM;

	/* First, grab a route. */
	if (!dst && (dst = FUNC1(sk, fl6, req,
					       IPPROTO_TCP)) == NULL)
		goto done;

	skb = FUNC11(sk, dst, req, foc, synack_type);

	if (skb) {
		FUNC0(skb, &ireq->ir_v6_loc_addr,
				    &ireq->ir_v6_rmt_addr);

		fl6->daddr = ireq->ir_v6_rmt_addr;
		if (np->repflow && ireq->pktopts)
			fl6->flowlabel = FUNC3(FUNC5(ireq->pktopts));

		FUNC8();
		opt = ireq->ipv6_opt;
		if (!opt)
			opt = FUNC7(np->opt);
		err = FUNC4(sk, skb, fl6, sk->sk_mark, opt, np->tclass,
			       sk->sk_priority);
		FUNC9();
		err = FUNC6(err);
	}

done:
	return err;
}