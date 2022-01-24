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
struct tcf_block {int dummy; } ;
struct flow_block_offload {int command; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FLOW_BLOCK_BIND 129 
#define  FLOW_BLOCK_UNBIND 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct tcf_block*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_block*,struct flow_block_offload*) ; 

__attribute__((used)) static int FUNC3(struct tcf_block *block,
			   struct flow_block_offload *bo)
{
	int err;

	switch (bo->command) {
	case FLOW_BLOCK_BIND:
		err = FUNC1(block, bo);
		break;
	case FLOW_BLOCK_UNBIND:
		err = 0;
		FUNC2(block, bo);
		break;
	default:
		FUNC0(1);
		err = -EOPNOTSUPP;
	}

	return err;
}