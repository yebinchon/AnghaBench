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
typedef  scalar_t__ u32 ;
struct tcp_sock {int /*<<< orphan*/  delivered_ce; scalar_t__ delivered; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FLAG_ECE ; 
 int /*<<< orphan*/  LINUX_MIB_TCPDELIVERED ; 
 int /*<<< orphan*/  LINUX_MIB_TCPDELIVEREDCE ; 
 int /*<<< orphan*/  FUNC0 (struct net const*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct net* FUNC1 (struct sock*) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static u32 FUNC3(struct sock *sk, u32 prior_delivered, int flag)
{
	const struct net *net = FUNC1(sk);
	struct tcp_sock *tp = FUNC2(sk);
	u32 delivered;

	delivered = tp->delivered - prior_delivered;
	FUNC0(net, LINUX_MIB_TCPDELIVERED, delivered);
	if (flag & FLAG_ECE) {
		tp->delivered_ce += delivered;
		FUNC0(net, LINUX_MIB_TCPDELIVEREDCE, delivered);
	}
	return delivered;
}