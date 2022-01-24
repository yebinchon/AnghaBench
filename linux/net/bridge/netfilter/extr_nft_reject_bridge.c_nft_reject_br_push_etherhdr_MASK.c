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
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *oldskb,
					struct sk_buff *nskb)
{
	struct ethhdr *eth;

	eth = FUNC3(nskb, ETH_HLEN);
	FUNC4(nskb);
	FUNC1(eth->h_source, FUNC0(oldskb)->h_dest);
	FUNC1(eth->h_dest, FUNC0(oldskb)->h_source);
	eth->h_proto = FUNC0(oldskb)->h_proto;
	FUNC2(nskb, ETH_HLEN);
}