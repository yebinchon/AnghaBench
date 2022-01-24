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
struct iphdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iphdr*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	struct iphdr *inner_iph = FUNC3(skb);

	if (FUNC0(FUNC2(skb)->tos))
		FUNC1(inner_iph);
}