#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tcphdr {scalar_t__ res1; scalar_t__ cwr; scalar_t__ ece; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ sysctl_tcp_ecn; } ;
struct net {TYPE_1__ ipv4; } ;
struct dst_entry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip_dsfield; } ;
struct TYPE_5__ {int ecn_ok; } ;

/* Variables and functions */
 int DST_FEATURE_ECN_CA ; 
 int /*<<< orphan*/  DST_FEATURE_ECN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sk_buff const*) ; 
 int FUNC2 (struct dst_entry const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct request_sock*) ; 
 struct net* FUNC4 (struct sock const*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock const*) ; 
 struct tcphdr* FUNC7 (struct sk_buff const*) ; 

__attribute__((used)) static void FUNC8(struct request_sock *req,
				   const struct sk_buff *skb,
				   const struct sock *listen_sk,
				   const struct dst_entry *dst)
{
	const struct tcphdr *th = FUNC7(skb);
	const struct net *net = FUNC4(listen_sk);
	bool th_ecn = th->ece && th->cwr;
	bool ect, ecn_ok;
	u32 ecn_ok_dst;

	if (!th_ecn)
		return;

	ect = !FUNC0(FUNC1(skb)->ip_dsfield);
	ecn_ok_dst = FUNC2(dst, DST_FEATURE_ECN_MASK);
	ecn_ok = net->ipv4.sysctl_tcp_ecn || ecn_ok_dst;

	if (((!ect || th->res1) && ecn_ok) || FUNC6(listen_sk) ||
	    (ecn_ok_dst & DST_FEATURE_ECN_CA) ||
	    FUNC5((struct sock *)req))
		FUNC3(req)->ecn_ok = 1;
}