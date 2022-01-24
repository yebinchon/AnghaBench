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
typedef  void* u32 ;
struct tipc_dest {int /*<<< orphan*/  list; void* port; void* node; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct tipc_dest* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC2 (struct list_head*,void*,void*) ; 
 scalar_t__ FUNC3 (int) ; 

bool FUNC4(struct list_head *l, u32 node, u32 port)
{
	struct tipc_dest *dst;

	if (FUNC2(l, node, port))
		return false;

	dst = FUNC0(sizeof(*dst), GFP_ATOMIC);
	if (FUNC3(!dst))
		return false;
	dst->node = node;
	dst->port = port;
	FUNC1(&dst->list, l);
	return true;
}