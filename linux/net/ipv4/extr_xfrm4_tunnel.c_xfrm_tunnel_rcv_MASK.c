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
struct TYPE_2__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb)
{
	return FUNC1(skb, IPPROTO_IPIP, FUNC0(skb)->saddr);
}