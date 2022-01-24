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
struct xt_table_info {void* entries; int /*<<< orphan*/  member_0; } ;
struct xt_table {int /*<<< orphan*/  valid_hooks; } ;
struct nf_hook_ops {int dummy; } ;
struct net {int dummy; } ;
struct arpt_replace {int /*<<< orphan*/  size; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct xt_table*) ; 
 int FUNC1 (struct xt_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_table*,struct xt_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct xt_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,struct nf_hook_ops const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xt_table_info*,void*,struct arpt_replace const*) ; 
 struct xt_table_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xt_table_info*) ; 
 struct xt_table* FUNC10 (struct net*,struct xt_table const*,struct xt_table_info*,struct xt_table_info*) ; 

int FUNC11(struct net *net,
			const struct xt_table *table,
			const struct arpt_replace *repl,
			const struct nf_hook_ops *ops,
			struct xt_table **res)
{
	int ret;
	struct xt_table_info *newinfo;
	struct xt_table_info bootstrap = {0};
	void *loc_cpu_entry;
	struct xt_table *new_table;

	newinfo = FUNC8(repl->size);
	if (!newinfo)
		return -ENOMEM;

	loc_cpu_entry = newinfo->entries;
	FUNC5(loc_cpu_entry, repl->entries, repl->size);

	ret = FUNC7(newinfo, loc_cpu_entry, repl);
	if (ret != 0)
		goto out_free;

	new_table = FUNC10(net, table, &bootstrap, newinfo);
	if (FUNC0(new_table)) {
		ret = FUNC1(new_table);
		goto out_free;
	}

	/* set res now, will see skbs right after nf_register_net_hooks */
	FUNC2(*res, new_table);

	ret = FUNC6(net, ops, FUNC4(table->valid_hooks));
	if (ret != 0) {
		FUNC3(new_table);
		*res = NULL;
	}

	return ret;

out_free:
	FUNC9(newinfo);
	return ret;
}