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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static u32 FUNC3(const struct sk_buff *skb)
{
	return FUNC1(FUNC0(skb)->daddr,
			      FUNC0(skb)->saddr,
			      FUNC2(skb)->dest,
			      FUNC2(skb)->source);
}