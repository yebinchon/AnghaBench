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
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct in_pktinfo {TYPE_1__ ipi_addr; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_PKTINFO ; 
 struct in_pktinfo* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SOL_IP ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct in_pktinfo*) ; 

__attribute__((used)) static void FUNC3(struct msghdr *msg, struct sk_buff *skb)
{
	struct in_pktinfo info = *FUNC0(skb);

	info.ipi_addr.s_addr = FUNC1(skb)->daddr;

	FUNC2(msg, SOL_IP, IP_PKTINFO, sizeof(info), &info);
}