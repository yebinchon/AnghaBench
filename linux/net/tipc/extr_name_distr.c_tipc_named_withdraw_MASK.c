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
struct sk_buff {int dummy; } ;
struct publication {scalar_t__ scope; int /*<<< orphan*/  binding_node; } ;
struct net {int dummy; } ;
struct name_table {int /*<<< orphan*/  cluster_scope_lock; } ;
struct distr_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_SIZE ; 
 scalar_t__ TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  WITHDRAWAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct distr_item*,struct publication*) ; 
 struct name_table* FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct sk_buff *FUNC9(struct net *net, struct publication *publ)
{
	struct name_table *nt = FUNC6(net);
	struct sk_buff *buf;
	struct distr_item *item;

	FUNC7(&nt->cluster_scope_lock);
	FUNC1(&publ->binding_node);
	FUNC8(&nt->cluster_scope_lock);
	if (publ->scope == TIPC_NODE_SCOPE)
		return NULL;

	buf = FUNC3(net, WITHDRAWAL, ITEM_SIZE, 0);
	if (!buf) {
		FUNC4("Withdrawal distribution failure\n");
		return NULL;
	}

	item = (struct distr_item *)FUNC2(FUNC0(buf));
	FUNC5(item, publ);
	return buf;
}