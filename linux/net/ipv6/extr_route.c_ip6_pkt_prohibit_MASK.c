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

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_ADM_PROHIBITED ; 
 int /*<<< orphan*/  IPSTATS_MIB_INNOROUTES ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct sk_buff *skb)
{
	return FUNC0(skb, ICMPV6_ADM_PROHIBITED, IPSTATS_MIB_INNOROUTES);
}