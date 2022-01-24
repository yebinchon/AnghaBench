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
struct sk_buff {scalar_t__ data; } ;
struct lowpan_addr_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff const*) ; 

__attribute__((used)) static inline struct
lowpan_addr_info *FUNC2(const struct sk_buff *skb)
{
	FUNC0(FUNC1(skb) < sizeof(struct lowpan_addr_info));
	return (struct lowpan_addr_info *)(skb->data -
			sizeof(struct lowpan_addr_info));
}