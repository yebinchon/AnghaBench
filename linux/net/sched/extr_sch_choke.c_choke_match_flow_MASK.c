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
struct sk_buff {scalar_t__ protocol; } ;
struct flow_keys {int dummy; } ;
struct TYPE_2__ {int keys_valid; int /*<<< orphan*/  keys; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct flow_keys*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct flow_keys*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct sk_buff *skb1,
			     struct sk_buff *skb2)
{
	struct flow_keys temp;

	if (skb1->protocol != skb2->protocol)
		return false;

	if (!FUNC0(skb1)->keys_valid) {
		FUNC0(skb1)->keys_valid = 1;
		FUNC3(skb1, &temp, 0);
		FUNC1(&FUNC0(skb1)->keys, &temp);
	}

	if (!FUNC0(skb2)->keys_valid) {
		FUNC0(skb2)->keys_valid = 1;
		FUNC3(skb2, &temp, 0);
		FUNC1(&FUNC0(skb2)->keys, &temp);
	}

	return !FUNC2(&FUNC0(skb1)->keys,
		       &FUNC0(skb2)->keys,
		       sizeof(FUNC0(skb1)->keys));
}