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
struct publication {int dummy; } ;
struct net {int dummy; } ;
struct name_table {scalar_t__ local_publ_count; } ;

/* Variables and functions */
 scalar_t__ TIPC_MAX_PUBL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct name_table* FUNC3 (struct net*) ; 
 struct sk_buff* FUNC4 (struct net*,struct publication*) ; 
 struct publication* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 

struct publication *FUNC9(struct net *net, u32 type, u32 lower,
					 u32 upper, u32 scope, u32 port,
					 u32 key)
{
	struct name_table *nt = FUNC3(net);
	struct tipc_net *tn = FUNC6(net);
	struct publication *p = NULL;
	struct sk_buff *skb = NULL;

	FUNC1(&tn->nametbl_lock);

	if (nt->local_publ_count >= TIPC_MAX_PUBL) {
		FUNC0("Bind failed, max limit %u reached\n", TIPC_MAX_PUBL);
		goto exit;
	}

	p = FUNC5(net, type, lower, upper, scope,
				     FUNC8(net), port, key);
	if (p) {
		nt->local_publ_count++;
		skb = FUNC4(net, p);
	}
exit:
	FUNC2(&tn->nametbl_lock);

	if (skb)
		FUNC7(net, skb);
	return p;
}