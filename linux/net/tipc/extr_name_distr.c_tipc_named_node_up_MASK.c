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
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct name_table {int /*<<< orphan*/  cluster_scope_lock; int /*<<< orphan*/  cluster_scope; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct sk_buff_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct name_table* FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct sk_buff_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct net *net, u32 dnode)
{
	struct name_table *nt = FUNC4(net);
	struct sk_buff_head head;

	FUNC0(&head);

	FUNC2(&nt->cluster_scope_lock);
	FUNC1(net, &head, dnode, &nt->cluster_scope);
	FUNC5(net, &head, dnode, 0);
	FUNC3(&nt->cluster_scope_lock);
}