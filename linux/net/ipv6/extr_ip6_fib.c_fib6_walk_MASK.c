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
struct fib6_walker {int /*<<< orphan*/  root; int /*<<< orphan*/  node; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWS_INIT ; 
 int FUNC0 (struct fib6_walker*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct fib6_walker*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct fib6_walker*) ; 

__attribute__((used)) static int FUNC3(struct net *net, struct fib6_walker *w)
{
	int res;

	w->state = FWS_INIT;
	w->node = w->root;

	FUNC1(net, w);
	res = FUNC0(w);
	if (res <= 0)
		FUNC2(net, w);
	return res;
}