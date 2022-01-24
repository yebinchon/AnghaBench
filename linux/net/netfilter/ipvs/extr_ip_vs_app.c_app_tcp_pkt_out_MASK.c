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
struct tcphdr {int /*<<< orphan*/  seq; } ;
struct sk_buff {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {int flags; int /*<<< orphan*/  out_seq; int /*<<< orphan*/  in_seq; } ;
struct ip_vs_app {int /*<<< orphan*/  (* pkt_out ) (struct ip_vs_app*,struct ip_vs_conn*,struct sk_buff*,int*,struct ip_vs_iphdr*) ;} ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int IP_VS_CONN_F_IN_SEQ ; 
 int IP_VS_CONN_F_OUT_SEQ ; 
 unsigned int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,unsigned int const) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_app*,struct ip_vs_conn*,struct sk_buff*,int*,struct ip_vs_iphdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC8(struct ip_vs_conn *cp, struct sk_buff *skb,
				  struct ip_vs_app *app,
				  struct ip_vs_iphdr *ipvsh)
{
	int diff;
	const unsigned int tcp_offset = FUNC0(skb);
	struct tcphdr *th;
	__u32 seq;

	if (FUNC2(skb, tcp_offset + sizeof(*th)))
		return 0;

	th = (struct tcphdr *)(FUNC3(skb) + tcp_offset);

	/*
	 *	Remember seq number in case this pkt gets resized
	 */
	seq = FUNC1(th->seq);

	/*
	 *	Fix seq stuff if flagged as so.
	 */
	if (cp->flags & IP_VS_CONN_F_OUT_SEQ)
		FUNC6(&cp->out_seq, th);
	if (cp->flags & IP_VS_CONN_F_IN_SEQ)
		FUNC5(&cp->in_seq, th);

	/*
	 *	Call private output hook function
	 */
	if (app->pkt_out == NULL)
		return 1;

	if (!app->pkt_out(app, cp, skb, &diff, ipvsh))
		return 0;

	/*
	 *	Update ip_vs seq stuff if len has changed.
	 */
	if (diff != 0)
		FUNC7(cp, &cp->out_seq,
			      IP_VS_CONN_F_OUT_SEQ, seq, diff);

	return 1;
}