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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ network_header; scalar_t__ mac_header; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static u32 FUNC3(const struct sk_buff *skb)
{
	u32 size = 0;

	if (!FUNC1(skb))
		return 0;

	if (FUNC2(skb)) {
		size += FUNC0(0); /* nested */
		size += FUNC0(sizeof(u16)); /* id */
		size += FUNC0(sizeof(u16)); /* tag */
	}

	if (skb->network_header > skb->mac_header)
		size += FUNC0(skb->network_header - skb->mac_header);

	return size;
}