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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 struct cfpkt* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfpkt *FUNC4(u16 len, u16 pfx)
{
	struct sk_buff *skb;

	skb = FUNC0(len + pfx, GFP_ATOMIC);
	if (FUNC3(skb == NULL))
		return NULL;

	FUNC1(skb, pfx);
	return FUNC2(skb);
}