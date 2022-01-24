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
struct tcp_sock {scalar_t__ ecn_flags; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_6__ {int tcp_flags; } ;
struct TYPE_4__ {int sysctl_tcp_ecn; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  RTAX_FEATURE_ECN ; 
 int TCPHDR_CWR ; 
 int TCPHDR_ECE ; 
 scalar_t__ TCP_ECN_OK ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 struct dst_entry* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct dst_entry const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC7(sk);
	bool bpf_needs_ecn = FUNC5(sk);
	bool use_ecn = FUNC4(sk)->ipv4.sysctl_tcp_ecn == 1 ||
		FUNC6(sk) || bpf_needs_ecn;

	if (!use_ecn) {
		const struct dst_entry *dst = FUNC2(sk);

		if (dst && FUNC3(dst, RTAX_FEATURE_ECN))
			use_ecn = true;
	}

	tp->ecn_flags = 0;

	if (use_ecn) {
		FUNC1(skb)->tcp_flags |= TCPHDR_ECE | TCPHDR_CWR;
		tp->ecn_flags = TCP_ECN_OK;
		if (FUNC6(sk) || bpf_needs_ecn)
			FUNC0(sk);
	}
}