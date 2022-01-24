#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct tipc_link {TYPE_1__* bc_rcvlink; void* tolerance; } ;
struct sk_buff_head {int dummy; } ;
struct TYPE_2__ {void* tolerance; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_MSG ; 
 scalar_t__ FUNC0 (struct tipc_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 

void FUNC2(struct tipc_link *l, u32 tol,
			     struct sk_buff_head *xmitq)
{
	l->tolerance = tol;
	if (l->bc_rcvlink)
		l->bc_rcvlink->tolerance = tol;
	if (FUNC0(l))
		FUNC1(l, STATE_MSG, 0, 0, 0, tol, 0, xmitq);
}