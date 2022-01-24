#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct tcphdr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  user_mss; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct tcp_request_sock_ops {scalar_t__ mss_clamp; } ;
struct sock {int dummy; } ;
struct request_sock_ops {int /*<<< orphan*/  slab_name; } ;
struct TYPE_6__ {int sysctl_tcp_syncookies; } ;
struct TYPE_7__ {TYPE_2__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 TYPE_3__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct tcphdr*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

u16 FUNC7(struct request_sock_ops *rsk_ops,
			  const struct tcp_request_sock_ops *af_ops,
			  struct sock *sk, struct tcphdr *th)
{
	struct tcp_sock *tp = FUNC5(sk);
	u16 mss;

	if (FUNC3(sk)->ipv4.sysctl_tcp_syncookies != 2 &&
	    !FUNC1(sk))
		return 0;

	if (!FUNC6(sk, rsk_ops->slab_name))
		return 0;

	if (FUNC2(sk)) {
		FUNC0(FUNC3(sk), LINUX_MIB_LISTENOVERFLOWS);
		return 0;
	}

	mss = FUNC4(th, tp->rx_opt.user_mss);
	if (!mss)
		mss = af_ops->mss_clamp;

	return mss;
}