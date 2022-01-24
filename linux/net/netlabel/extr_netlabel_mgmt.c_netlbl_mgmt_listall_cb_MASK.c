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
struct netlbl_domhsh_walk_arg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; TYPE_1__* nl_cb; } ;
struct netlbl_dom_map {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLBL_MGMT_C_LISTALL ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlbl_mgmt_gnl_family ; 
 int FUNC4 (int /*<<< orphan*/ ,struct netlbl_dom_map*) ; 

__attribute__((used)) static int FUNC5(struct netlbl_dom_map *entry, void *arg)
{
	int ret_val = -ENOMEM;
	struct netlbl_domhsh_walk_arg *cb_arg = arg;
	void *data;

	data = FUNC3(cb_arg->skb, FUNC0(cb_arg->nl_cb->skb).portid,
			   cb_arg->seq, &netlbl_mgmt_gnl_family,
			   NLM_F_MULTI, NLBL_MGMT_C_LISTALL);
	if (data == NULL)
		goto listall_cb_failure;

	ret_val = FUNC4(cb_arg->skb, entry);
	if (ret_val != 0)
		goto listall_cb_failure;

	cb_arg->seq++;
	FUNC2(cb_arg->skb, data);
	return 0;

listall_cb_failure:
	FUNC1(cb_arg->skb, data);
	return ret_val;
}