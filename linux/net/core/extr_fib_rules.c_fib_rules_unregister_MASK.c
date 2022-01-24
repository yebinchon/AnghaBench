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
struct net {int /*<<< orphan*/  rules_mod_lock; } ;
struct fib_rules_ops {int /*<<< orphan*/  list; struct net* fro_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fib_rules_ops*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib_rules_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fib_rules_ops *ops)
{
	struct net *net = ops->fro_net;

	FUNC3(&net->rules_mod_lock);
	FUNC2(&ops->list);
	FUNC4(&net->rules_mod_lock);

	FUNC0(ops);
	FUNC1(ops, rcu);
}