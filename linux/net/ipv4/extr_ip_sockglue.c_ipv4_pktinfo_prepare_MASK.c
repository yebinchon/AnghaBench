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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtable {scalar_t__ rt_iif; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct in_pktinfo {scalar_t__ ipi_ifindex; TYPE_1__ ipi_spec_dst; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int cmsg_flags; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int IP_CMSG_PKTINFO ; 
 scalar_t__ LOOPBACK_IFINDEX ; 
 struct in_pktinfo* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sock const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct rtable* FUNC8 (struct sk_buff*) ; 

void FUNC9(const struct sock *sk, struct sk_buff *skb)
{
	struct in_pktinfo *pktinfo = FUNC1(skb);
	bool prepare = (FUNC4(sk)->cmsg_flags & IP_CMSG_PKTINFO) ||
		       FUNC6(sk);

	if (prepare && FUNC8(skb)) {
		/* skb->cb is overloaded: prior to this point it is IP{6}CB
		 * which has interface index (iif) as the first member of the
		 * underlying inet{6}_skb_parm struct. This code then overlays
		 * PKTINFO_SKB_CB and in_pktinfo also has iif as the first
		 * element so the iif is picked up from the prior IPCB. If iif
		 * is the loopback interface, then return the sending interface
		 * (e.g., process binds socket to eth0 for Tx which is
		 * redirected to loopback in the rtable/dst).
		 */
		struct rtable *rt = FUNC8(skb);
		bool l3slave = FUNC5(FUNC0(skb)->flags);

		if (pktinfo->ipi_ifindex == LOOPBACK_IFINDEX)
			pktinfo->ipi_ifindex = FUNC3(skb);
		else if (l3slave && rt && rt->rt_iif)
			pktinfo->ipi_ifindex = rt->rt_iif;

		pktinfo->ipi_spec_dst.s_addr = FUNC2(skb);
	} else {
		pktinfo->ipi_ifindex = 0;
		pktinfo->ipi_spec_dst.s_addr = 0;
	}
	FUNC7(skb);
}