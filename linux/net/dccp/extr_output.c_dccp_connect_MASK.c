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
struct sock {TYPE_1__* sk_prot; int /*<<< orphan*/  sk_allocation; scalar_t__ sk_err; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_rto; scalar_t__ icsk_retransmits; } ;
struct dst_entry {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_iss; int /*<<< orphan*/  dccps_gar; } ;
struct TYPE_4__ {int /*<<< orphan*/  dccpd_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_ACTIVEOPENS ; 
 int /*<<< orphan*/  DCCP_PKT_REQUEST ; 
 int /*<<< orphan*/  DCCP_RTO_MAX ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int ENOBUFS ; 
 int EPROTO ; 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 struct dst_entry* FUNC2 (struct sock*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dccp_sock*) ; 
 struct dccp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dst_entry*) ; 
 struct inet_connection_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct sock *sk)
{
	struct sk_buff *skb;
	struct dccp_sock *dp = FUNC5(sk);
	struct dst_entry *dst = FUNC2(sk);
	struct inet_connection_sock *icsk = FUNC10(sk);

	sk->sk_err = 0;
	FUNC13(sk, SOCK_DONE);

	FUNC7(sk, FUNC9(dst));

	/* do not connect if feature negotiation setup fails */
	if (FUNC4(FUNC5(sk)))
		return -EPROTO;

	/* Initialise GAR as per 8.5; AWL/AWH are set in dccp_transmit_skb() */
	dp->dccps_gar = dp->dccps_iss;

	skb = FUNC3(sk->sk_prot->max_header, sk->sk_allocation);
	if (FUNC14(skb == NULL))
		return -ENOBUFS;

	/* Reserve space for headers. */
	FUNC12(skb, sk->sk_prot->max_header);

	FUNC1(skb)->dccpd_type = DCCP_PKT_REQUEST;

	FUNC8(sk, FUNC6(sk, skb));
	FUNC0(DCCP_MIB_ACTIVEOPENS);

	/* Timer for repeating the REQUEST until an answer. */
	icsk->icsk_retransmits = 0;
	FUNC11(sk, ICSK_TIME_RETRANS,
				  icsk->icsk_rto, DCCP_RTO_MAX);
	return 0;
}