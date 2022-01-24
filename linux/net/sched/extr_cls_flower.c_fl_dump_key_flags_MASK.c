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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  flags_mask ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DIS_FIRST_FRAG ; 
 int /*<<< orphan*/  FLOW_DIS_IS_FRAGMENT ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_FLAGS ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_FLAGS_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, u32 flags_key, u32 flags_mask)
{
	u32 key, mask;
	__be32 _key, _mask;
	int err;

	if (!FUNC2(&flags_mask, 0, sizeof(flags_mask)))
		return 0;

	key = 0;
	mask = 0;

	FUNC1(flags_key, flags_mask, &key, &mask,
			TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT, FLOW_DIS_IS_FRAGMENT);
	FUNC1(flags_key, flags_mask, &key, &mask,
			TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST,
			FLOW_DIS_FIRST_FRAG);

	_key = FUNC0(key);
	_mask = FUNC0(mask);

	err = FUNC3(skb, TCA_FLOWER_KEY_FLAGS, 4, &_key);
	if (err)
		return err;

	return FUNC3(skb, TCA_FLOWER_KEY_FLAGS_MASK, 4, &_mask);
}