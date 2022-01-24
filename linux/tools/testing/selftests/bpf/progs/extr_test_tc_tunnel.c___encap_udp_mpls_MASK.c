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
struct __sk_buff {scalar_t__ protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_MPLS_UC ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int TC_ACT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct __sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct __sk_buff *skb)
{
	if (skb->protocol == FUNC0(ETH_P_IP))
		return FUNC1(skb, IPPROTO_UDP, ETH_P_MPLS_UC);
	else
		return TC_ACT_OK;
}