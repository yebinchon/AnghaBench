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
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static void
FUNC2(struct Qdisc *sch)
{
	struct sk_buff *skb;

	while ((skb = FUNC1(sch)) != NULL)
		FUNC0(skb, skb);
}