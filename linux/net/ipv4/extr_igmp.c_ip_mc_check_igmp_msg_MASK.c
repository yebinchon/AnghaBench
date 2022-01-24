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
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int ENOMSG ; 
#define  IGMPV2_HOST_MEMBERSHIP_REPORT 132 
#define  IGMPV3_HOST_MEMBERSHIP_REPORT 131 
#define  IGMP_HOST_LEAVE_MESSAGE 130 
#define  IGMP_HOST_MEMBERSHIP_QUERY 129 
#define  IGMP_HOST_MEMBERSHIP_REPORT 128 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb)
{
	switch (FUNC0(skb)->type) {
	case IGMP_HOST_LEAVE_MESSAGE:
	case IGMP_HOST_MEMBERSHIP_REPORT:
	case IGMPV2_HOST_MEMBERSHIP_REPORT:
		return 0;
	case IGMPV3_HOST_MEMBERSHIP_REPORT:
		return FUNC2(skb);
	case IGMP_HOST_MEMBERSHIP_QUERY:
		return FUNC1(skb);
	default:
		return -ENOMSG;
	}
}