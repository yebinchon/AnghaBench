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
struct name_table {int /*<<< orphan*/  cluster_scope_lock; int /*<<< orphan*/  cluster_scope; int /*<<< orphan*/  node_scope; } ;
struct distr_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_SIZE ; 
 int /*<<< orphan*/  PUBLICATION ; 
 scalar_t__ TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct distr_item*,struct publication*) ; 
 struct name_table* FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct sk_buff *FUNC10(struct net *net, struct publication *publ)
{
	struct name_table *nt = FUNC7(net);
	struct distr_item *item;
	struct sk_buff *skb;

	if (publ->scope == TIPC_NODE_SCOPE) {
		FUNC2(&publ->binding_node, &nt->node_scope);
		return NULL;
	}
	FUNC8(&nt->cluster_scope_lock);
	FUNC1(&publ->binding_node, &nt->cluster_scope);
	FUNC9(&nt->cluster_scope_lock);
	skb = FUNC4(net, PUBLICATION, ITEM_SIZE, 0);
	if (!skb) {
		FUNC5("Publication distribution failure\n");
		return NULL;
	}

	item = (struct distr_item *)FUNC3(FUNC0(skb));
	FUNC6(item, publ);
	return skb;
}