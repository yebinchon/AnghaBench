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
struct sock {int /*<<< orphan*/  sk_priority; int /*<<< orphan*/  sk_mark; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  tclass; int /*<<< orphan*/  opt; } ;
struct inet_request_sock {struct ipv6_txoptions* ipv6_opt; int /*<<< orphan*/  ir_v6_rmt_addr; int /*<<< orphan*/  ir_v6_loc_addr; int /*<<< orphan*/  ir_num; int /*<<< orphan*/  ir_rmt_port; int /*<<< orphan*/  ir_iif; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  daddr; int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  flowi6_oif; scalar_t__ flowlabel; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowi6_proto; } ;
struct dst_entry {int dummy; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_checksum; } ;
typedef  int /*<<< orphan*/  fl6 ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int FUNC1 (struct dst_entry*) ; 
 struct dccp_hdr* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sock const*,struct dst_entry*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 struct in6_addr* FUNC6 (struct flowi6*,struct ipv6_txoptions*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC7 (struct flowi6*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC9 (struct sock const*) ; 
 struct inet_request_sock* FUNC10 (struct request_sock*) ; 
 struct dst_entry* FUNC11 (struct sock const*,struct flowi6*,struct in6_addr*) ; 
 int FUNC12 (struct sock const*,struct sk_buff*,struct flowi6*,int /*<<< orphan*/ ,struct ipv6_txoptions*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int) ; 
 struct ipv6_txoptions* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct request_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(const struct sock *sk, struct request_sock *req)
{
	struct inet_request_sock *ireq = FUNC10(req);
	struct ipv6_pinfo *np = FUNC9(sk);
	struct sk_buff *skb;
	struct in6_addr *final_p, final;
	struct flowi6 fl6;
	int err = -1;
	struct dst_entry *dst;

	FUNC13(&fl6, 0, sizeof(fl6));
	fl6.flowi6_proto = IPPROTO_DCCP;
	fl6.daddr = ireq->ir_v6_rmt_addr;
	fl6.saddr = ireq->ir_v6_loc_addr;
	fl6.flowlabel = 0;
	fl6.flowi6_oif = ireq->ir_iif;
	fl6.fl6_dport = ireq->ir_rmt_port;
	fl6.fl6_sport = FUNC8(ireq->ir_num);
	FUNC18(req, FUNC7(&fl6));


	FUNC16();
	final_p = FUNC6(&fl6, FUNC15(np->opt), &final);
	FUNC17();

	dst = FUNC11(sk, &fl6, final_p);
	if (FUNC0(dst)) {
		err = FUNC1(dst);
		dst = NULL;
		goto done;
	}

	skb = FUNC3(sk, dst, req);
	if (skb != NULL) {
		struct dccp_hdr *dh = FUNC2(skb);
		struct ipv6_txoptions *opt;

		dh->dccph_checksum = FUNC4(skb,
							 &ireq->ir_v6_loc_addr,
							 &ireq->ir_v6_rmt_addr);
		fl6.daddr = ireq->ir_v6_rmt_addr;
		FUNC16();
		opt = ireq->ipv6_opt;
		if (!opt)
			opt = FUNC15(np->opt);
		err = FUNC12(sk, skb, &fl6, sk->sk_mark, opt, np->tclass,
			       sk->sk_priority);
		FUNC17();
		err = FUNC14(err);
	}

done:
	FUNC5(dst);
	return err;
}