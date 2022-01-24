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
typedef  int u32 ;
struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_chain {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  block; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int TC_ACT_EXT_OPCODE_MAX ; 
 int TC_ACT_EXT_VAL_MASK ; 
 int /*<<< orphan*/  TC_ACT_GOTO_CHAIN ; 
 int TC_ACT_UNSPEC ; 
 int TC_ACT_VALUE_MAX ; 
 struct tcf_chain* FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(int action, struct tcf_proto *tp,
			     struct tcf_chain **newchain,
			     struct netlink_ext_ack *extack)
{
	int opcode = FUNC2(action), ret = -EINVAL;
	u32 chain_index;

	if (!opcode)
		ret = action > TC_ACT_VALUE_MAX ? -EINVAL : 0;
	else if (opcode <= TC_ACT_EXT_OPCODE_MAX || action == TC_ACT_UNSPEC)
		ret = 0;
	if (ret) {
		FUNC0(extack, "invalid control action");
		goto end;
	}

	if (FUNC1(action, TC_ACT_GOTO_CHAIN)) {
		chain_index = action & TC_ACT_EXT_VAL_MASK;
		if (!tp || !newchain) {
			ret = -EINVAL;
			FUNC0(extack,
				       "can't goto NULL proto/chain");
			goto end;
		}
		*newchain = FUNC3(tp->chain->block, chain_index);
		if (!*newchain) {
			ret = -ENOMEM;
			FUNC0(extack,
				       "can't allocate goto_chain");
		}
	}
end:
	return ret;
}