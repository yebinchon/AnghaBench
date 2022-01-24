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
struct sock {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sysctl_tcp_min_snd_mss; int /*<<< orphan*/  sysctl_tcp_mtu_probe_floor; int /*<<< orphan*/  sysctl_tcp_base_mss; int /*<<< orphan*/  sysctl_tcp_mtu_probing; } ;
struct net {TYPE_1__ ipv4; } ;
struct TYPE_4__ {int enabled; int /*<<< orphan*/  search_low; int /*<<< orphan*/  probe_timestamp; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_pmtu_cookie; TYPE_2__ icsk_mtup; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct net* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  tcp_jiffies32 ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 int FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inet_connection_sock *icsk, struct sock *sk)
{
	const struct net *net = FUNC2(sk);
	int mss;

	/* Black hole detection */
	if (!net->ipv4.sysctl_tcp_mtu_probing)
		return;

	if (!icsk->icsk_mtup.enabled) {
		icsk->icsk_mtup.enabled = 1;
		icsk->icsk_mtup.probe_timestamp = tcp_jiffies32;
	} else {
		mss = FUNC4(sk, icsk->icsk_mtup.search_low) >> 1;
		mss = FUNC1(net->ipv4.sysctl_tcp_base_mss, mss);
		mss = FUNC0(mss, net->ipv4.sysctl_tcp_mtu_probe_floor);
		mss = FUNC0(mss, net->ipv4.sysctl_tcp_min_snd_mss);
		icsk->icsk_mtup.search_low = FUNC3(sk, mss);
	}
	FUNC5(sk, icsk->icsk_pmtu_cookie);
}