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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct devlink_dpipe_table {int /*<<< orphan*/  resource_units; int /*<<< orphan*/  resource_id; scalar_t__ resource_valid; int /*<<< orphan*/  counters_enabled; int /*<<< orphan*/  name; int /*<<< orphan*/  priv; TYPE_1__* table_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* size_get ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_TABLE ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_TABLE_NAME ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_ID ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_UNITS ; 
 int /*<<< orphan*/  DEVLINK_ATTR_DPIPE_TABLE_SIZE ; 
 int /*<<< orphan*/  DEVLINK_ATTR_PAD ; 
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (struct devlink_dpipe_table*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct devlink_dpipe_table*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb,
				   struct devlink_dpipe_table *table)
{
	struct nlattr *table_attr;
	u64 table_size;

	table_size = table->table_ops->size_get(table->priv);
	table_attr = FUNC4(skb, DEVLINK_ATTR_DPIPE_TABLE);
	if (!table_attr)
		return -EMSGSIZE;

	if (FUNC5(skb, DEVLINK_ATTR_DPIPE_TABLE_NAME, table->name) ||
	    FUNC6(skb, DEVLINK_ATTR_DPIPE_TABLE_SIZE, table_size,
			      DEVLINK_ATTR_PAD))
		goto nla_put_failure;
	if (FUNC7(skb, DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED,
		       table->counters_enabled))
		goto nla_put_failure;

	if (table->resource_valid) {
		if (FUNC6(skb, DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_ID,
				      table->resource_id, DEVLINK_ATTR_PAD) ||
		    FUNC6(skb, DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_UNITS,
				      table->resource_units, DEVLINK_ATTR_PAD))
			goto nla_put_failure;
	}
	if (FUNC1(table, skb))
		goto nla_put_failure;

	if (FUNC0(table, skb))
		goto nla_put_failure;

	FUNC3(skb, table_attr);
	return 0;

nla_put_failure:
	FUNC2(skb, table_attr);
	return -EMSGSIZE;
}