#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union tcp_md5_addr {int dummy; } tcp_md5_addr ;
typedef  scalar_t__ u32 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int rsk_rcv_wnd; int /*<<< orphan*/  ts_recent; } ;
struct TYPE_8__ {int rcv_wscale; scalar_t__ no_srccheck; } ;
struct TYPE_7__ {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {scalar_t__ ts_off; int /*<<< orphan*/  rcv_nxt; scalar_t__ snt_isn; } ;
struct TYPE_5__ {scalar_t__ snd_nxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IP_REPLY_ARG_NOSRCCHECK ; 
 scalar_t__ TCP_LISTEN ; 
 TYPE_4__* FUNC0 (struct request_sock*) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock const*,union tcp_md5_addr*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct request_sock*) ; 
 TYPE_1__* FUNC4 (struct sock const*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sock const*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct sock *sk, struct sk_buff *skb,
				  struct request_sock *req)
{
	/* sk->sk_state == TCP_LISTEN -> for regular TCP_SYN_RECV
	 * sk->sk_state == TCP_SYN_RECV -> for Fast Open.
	 */
	u32 seq = (sk->sk_state == TCP_LISTEN) ? FUNC3(req)->snt_isn + 1 :
					     FUNC4(sk)->snd_nxt;

	/* RFC 7323 2.3
	 * The window field (SEG.WND) of every outgoing segment, with the
	 * exception of <SYN> segments, MUST be right-shifted by
	 * Rcv.Wind.Shift bits:
	 */
	FUNC6(sk, skb, seq,
			FUNC3(req)->rcv_nxt,
			req->rsk_rcv_wnd >> FUNC0(req)->rcv_wscale,
			FUNC5() + FUNC3(req)->ts_off,
			req->ts_recent,
			0,
			FUNC2(sk, (union tcp_md5_addr *)&FUNC1(skb)->saddr,
					  AF_INET),
			FUNC0(req)->no_srccheck ? IP_REPLY_ARG_NOSRCCHECK : 0,
			FUNC1(skb)->tos);
}