#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct tipc_bclink_entry {TYPE_1__ inputq2; int /*<<< orphan*/  arrvq; TYPE_2__ inputq1; } ;
struct tipc_node {int /*<<< orphan*/  net; struct tipc_bclink_entry bc_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct tipc_node *n)
{
	struct tipc_bclink_entry *be = &n->bc_entry;

	/* 'arrvq' is under inputq2's lock protection */
	FUNC1(&be->inputq2.lock);
	FUNC1(&be->inputq1.lock);
	FUNC0(&be->inputq1, &be->arrvq);
	FUNC2(&be->inputq1.lock);
	FUNC2(&be->inputq2.lock);
	FUNC3(n->net, &be->arrvq, &be->inputq2);
}