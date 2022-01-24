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
typedef  struct rpc_xprt* (* xprt_switch_find_xprt_t ) (struct rpc_xprt_switch*,struct rpc_xprt*) ;
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 struct rpc_xprt* FUNC0 (struct rpc_xprt**) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_xprt**,struct rpc_xprt*) ; 

__attribute__((used)) static
struct rpc_xprt *FUNC2(struct rpc_xprt_switch *xps,
		struct rpc_xprt **cursor,
		xprt_switch_find_xprt_t find_next)
{
	struct rpc_xprt *pos, *old;

	old = FUNC0(cursor);
	pos = find_next(xps, old);
	FUNC1(cursor, pos);
	return pos;
}