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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct flow_keys_basic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff const*,int /*<<< orphan*/ ,struct flow_keys_basic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff const*,struct flow_keys_basic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 

u32 FUNC3(const struct sk_buff *skb)
{
	struct flow_keys_basic keys;

	if (!FUNC1(NULL, skb, &keys,
					      NULL, 0, 0, 0, 0))
		return 0;

	return FUNC0(skb, skb->data, &keys, FUNC2(skb));
}