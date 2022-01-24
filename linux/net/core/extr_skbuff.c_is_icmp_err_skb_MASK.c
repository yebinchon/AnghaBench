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
struct TYPE_3__ {scalar_t__ ee_origin; } ;
struct TYPE_4__ {TYPE_1__ ee; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff const*) ; 
 scalar_t__ SO_EE_ORIGIN_ICMP ; 
 scalar_t__ SO_EE_ORIGIN_ICMP6 ; 

__attribute__((used)) static bool FUNC1(const struct sk_buff *skb)
{
	return skb && (FUNC0(skb)->ee.ee_origin == SO_EE_ORIGIN_ICMP ||
		       FUNC0(skb)->ee.ee_origin == SO_EE_ORIGIN_ICMP6);
}