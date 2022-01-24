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
struct timer_list {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_timer; } ;
struct dn_scp {scalar_t__ persist; scalar_t__ state; int /*<<< orphan*/  (* keepalive_fxn ) (struct sock*) ;scalar_t__ keepalive; scalar_t__ stamp; scalar_t__ (* persist_fxn ) (struct sock*) ;} ;

/* Variables and functions */
 scalar_t__ DN_RUN ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int HZ ; 
 scalar_t__ SLOW_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct sock* sk ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  sk_timer ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct sock *sk = FUNC3(sk, t, sk_timer);
	struct dn_scp *scp = FUNC0(sk);

	FUNC1(sk);

	if (FUNC5(sk)) {
		FUNC4(sk, &sk->sk_timer, jiffies + HZ / 10);
		goto out;
	}

	/*
	 * The persist timer is the standard slow timer used for retransmits
	 * in both connection establishment and disconnection as well as
	 * in the RUN state. The different states are catered for by changing
	 * the function pointer in the socket. Setting the timer to a value
	 * of zero turns it off. We allow the persist_fxn to turn the
	 * timer off in a permant way by returning non-zero, so that
	 * timer based routines may remove sockets. This is why we have a
	 * sock_hold()/sock_put() around the timer to prevent the socket
	 * going away in the middle.
	 */
	if (scp->persist && scp->persist_fxn) {
		if (scp->persist <= SLOW_INTERVAL) {
			scp->persist = 0;

			if (scp->persist_fxn(sk))
				goto out;
		} else {
			scp->persist -= SLOW_INTERVAL;
		}
	}

	/*
	 * Check for keepalive timeout. After the other timer 'cos if
	 * the previous timer caused a retransmit, we don't need to
	 * do this. scp->stamp is the last time that we sent a packet.
	 * The keepalive function sends a link service packet to the
	 * other end. If it remains unacknowledged, the standard
	 * socket timers will eventually shut the socket down. Each
	 * time we do this, scp->stamp will be updated, thus
	 * we won't try and send another until scp->keepalive has passed
	 * since the last successful transmission.
	 */
	if (scp->keepalive && scp->keepalive_fxn && (scp->state == DN_RUN)) {
		if (FUNC9(jiffies, scp->stamp + scp->keepalive))
			scp->keepalive_fxn(sk);
	}

	FUNC4(sk, &sk->sk_timer, jiffies + SLOW_INTERVAL);
out:
	FUNC2(sk);
	FUNC6(sk);
}