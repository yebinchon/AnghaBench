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
struct sk_buff {scalar_t__ csum_not_inet; int /*<<< orphan*/  ip_summed; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static __le32 FUNC3(struct sk_buff *skb)
{
	skb->ip_summed = CHECKSUM_NONE;
	skb->csum_not_inet = 0;
	FUNC0(skb, ~0);
	return FUNC1(skb, FUNC2(skb));
}