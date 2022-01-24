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
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FLOW_DIS_FIRST_FRAG ; 
 int /*<<< orphan*/  FLOW_DIS_IS_FRAGMENT ; 
 size_t TCA_FLOWER_KEY_FLAGS ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST ; 
 int /*<<< orphan*/  TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT ; 
 size_t TCA_FLOWER_KEY_FLAGS_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 

__attribute__((used)) static int FUNC3(struct nlattr **tb,
			    u32 *flags_key, u32 *flags_mask)
{
	u32 key, mask;

	/* mask is mandatory for flags */
	if (!tb[TCA_FLOWER_KEY_FLAGS_MASK])
		return -EINVAL;

	key = FUNC0(FUNC2(tb[TCA_FLOWER_KEY_FLAGS]));
	mask = FUNC0(FUNC2(tb[TCA_FLOWER_KEY_FLAGS_MASK]));

	*flags_key  = 0;
	*flags_mask = 0;

	FUNC1(key, mask, flags_key, flags_mask,
			TCA_FLOWER_KEY_FLAGS_IS_FRAGMENT, FLOW_DIS_IS_FRAGMENT);
	FUNC1(key, mask, flags_key, flags_mask,
			TCA_FLOWER_KEY_FLAGS_FRAG_IS_FIRST,
			FLOW_DIS_FIRST_FRAG);

	return 0;
}