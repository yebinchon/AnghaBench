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
struct TYPE_2__ {scalar_t__ protocol; } ;

/* Variables and functions */
 int ENOMSG ; 
 scalar_t__ IPPROTO_IGMP ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sk_buff *skb)
{
	int ret = FUNC3(skb);

	if (ret < 0)
		return ret;

	if (FUNC0(skb)->protocol != IPPROTO_IGMP)
		return -ENOMSG;

	ret = FUNC1(skb);
	if (ret < 0)
		return ret;

	return FUNC2(skb);
}