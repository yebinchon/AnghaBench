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
typedef  scalar_t__ u32 ;
struct nf_flowtable {int /*<<< orphan*/  rhashtable; } ;
struct flow_offload {TYPE_1__* tuplehash; scalar_t__ timeout; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ NF_FLOW_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  nf_flow_offload_rhash_params ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct nf_flowtable *flow_table, struct flow_offload *flow)
{
	int err;

	flow->timeout = (u32)jiffies + NF_FLOW_TIMEOUT;

	err = FUNC0(&flow_table->rhashtable,
				     &flow->tuplehash[0].node,
				     nf_flow_offload_rhash_params);
	if (err < 0)
		return err;

	err = FUNC0(&flow_table->rhashtable,
				     &flow->tuplehash[1].node,
				     nf_flow_offload_rhash_params);
	if (err < 0) {
		FUNC1(&flow_table->rhashtable,
				       &flow->tuplehash[0].node,
				       nf_flow_offload_rhash_params);
		return err;
	}

	return 0;
}