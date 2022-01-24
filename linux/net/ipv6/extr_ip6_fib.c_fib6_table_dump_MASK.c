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
struct net {int dummy; } ;
struct fib6_walker {int /*<<< orphan*/ * root; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; int /*<<< orphan*/  tb6_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct fib6_walker*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net *net, struct fib6_table *tb,
			    struct fib6_walker *w)
{
	w->root = &tb->tb6_root;
	FUNC1(&tb->tb6_lock);
	FUNC0(net, w);
	FUNC2(&tb->tb6_lock);
}