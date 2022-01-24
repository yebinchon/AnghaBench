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
struct tipc_sock {struct tipc_group* group; int /*<<< orphan*/  sk; } ;
struct tipc_name_seq {int dummy; } ;
struct tipc_group {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct net* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct tipc_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_group*,struct tipc_name_seq*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_sock*,int,struct tipc_name_seq*) ; 

__attribute__((used)) static int FUNC4(struct tipc_sock *tsk)
{
	struct net *net = FUNC0(&tsk->sk);
	struct tipc_group *grp = tsk->group;
	struct tipc_name_seq seq;
	int scope;

	if (!grp)
		return -EINVAL;
	FUNC2(grp, &seq, &scope);
	FUNC1(net, grp);
	tsk->group = NULL;
	FUNC3(tsk, scope, &seq);
	return 0;
}