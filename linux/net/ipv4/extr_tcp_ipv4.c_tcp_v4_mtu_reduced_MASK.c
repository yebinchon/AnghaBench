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
typedef  scalar_t__ u32 ;
struct sock {int sk_state; int /*<<< orphan*/  sk_err_soft; } ;
struct inet_sock {scalar_t__ pmtudisc; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_pmtu_cookie; } ;
struct TYPE_3__ {scalar_t__ mtu_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 scalar_t__ IP_PMTUDISC_DONT ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 struct dst_entry* FUNC2 (struct sock*,scalar_t__) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,struct dst_entry*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,scalar_t__) ; 

void FUNC9(struct sock *sk)
{
	struct inet_sock *inet = FUNC3(sk);
	struct dst_entry *dst;
	u32 mtu;

	if ((1 << sk->sk_state) & (TCPF_LISTEN | TCPF_CLOSE))
		return;
	mtu = FUNC7(sk)->mtu_info;
	dst = FUNC2(sk, mtu);
	if (!dst)
		return;

	/* Something is about to be wrong... Remember soft error
	 * for the case, if this connection will not able to recover.
	 */
	if (mtu < FUNC0(dst) && FUNC4(sk, dst))
		sk->sk_err_soft = EMSGSIZE;

	mtu = FUNC0(dst);

	if (inet->pmtudisc != IP_PMTUDISC_DONT &&
	    FUNC5(sk) &&
	    FUNC1(sk)->icsk_pmtu_cookie > mtu) {
		FUNC8(sk, mtu);

		/* Resend the TCP packet because it's
		 * clear that the old packet has been
		 * dropped. This is the new "fast" path mtu
		 * discovery.
		 */
		FUNC6(sk);
	} /* else let the usual retransmit timer handle it */
}