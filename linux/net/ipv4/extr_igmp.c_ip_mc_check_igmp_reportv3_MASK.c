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
struct sk_buff {int dummy; } ;
struct igmpv3_report {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb)
{
	unsigned int len = FUNC1(skb);

	len += sizeof(struct igmpv3_report);

	return FUNC0(skb, len) ? 0 : -EINVAL;
}