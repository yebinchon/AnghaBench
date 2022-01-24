#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int icmp6_type; } ;

/* Variables and functions */
#define  ICMPV6_MGM_REPORT 129 
#define  ICMPV6_MLD2_REPORT 128 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC2(struct sk_buff *skb)
{
	if (FUNC1(skb) < 0)
		return false;

	switch (FUNC0(skb)->icmp6_type) {
	case ICMPV6_MGM_REPORT:
	case ICMPV6_MLD2_REPORT:
		return true;
	}

	return false;
}