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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_net {int /*<<< orphan*/  nametbl_lock; } ;
struct sk_buff {int dummy; } ;
struct publication {int /*<<< orphan*/  binding_sock; } ;
struct net {int dummy; } ;
struct name_table {int /*<<< orphan*/  local_publ_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct publication*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct name_table* FUNC5 (struct net*) ; 
 struct sk_buff* FUNC6 (struct net*,struct publication*) ; 
 struct publication* FUNC7 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*) ; 

int FUNC11(struct net *net, u32 type, u32 lower,
			  u32 upper, u32 key)
{
	struct name_table *nt = FUNC5(net);
	struct tipc_net *tn = FUNC8(net);
	u32 self = FUNC10(net);
	struct sk_buff *skb = NULL;
	struct publication *p;

	FUNC3(&tn->nametbl_lock);

	p = FUNC7(net, type, lower, upper, self, key);
	if (p) {
		nt->local_publ_count--;
		skb = FUNC6(net, p);
		FUNC1(&p->binding_sock);
		FUNC0(p, rcu);
	} else {
		FUNC2("Failed to remove local publication {%u,%u,%u}/%u\n",
		       type, lower, upper, key);
	}
	FUNC4(&tn->nametbl_lock);

	if (skb) {
		FUNC9(net, skb);
		return 1;
	}
	return 0;
}