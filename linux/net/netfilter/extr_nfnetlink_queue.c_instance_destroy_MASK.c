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
struct nfqnl_instance {int dummy; } ;
struct nfnl_queue_net {int /*<<< orphan*/  instances_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfqnl_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nfnl_queue_net *q, struct nfqnl_instance *inst)
{
	FUNC1(&q->instances_lock);
	FUNC0(inst);
	FUNC2(&q->instances_lock);
}