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
struct ipc_post {int /*<<< orphan*/  node; } ;
struct intel_sst_drv {TYPE_1__* ops; int /*<<< orphan*/  ipc_spin_lock; int /*<<< orphan*/  ipc_dispatch_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* post_message ) (struct intel_sst_drv*,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sst_drv*,int /*<<< orphan*/ *,int) ; 

void FUNC4(struct intel_sst_drv *sst,
						struct ipc_post *msg)
{
	unsigned long irq_flags;

	FUNC1(&sst->ipc_spin_lock, irq_flags);
	FUNC0(&msg->node, &sst->ipc_dispatch_list);
	FUNC2(&sst->ipc_spin_lock, irq_flags);
	sst->ops->post_message(sst, NULL, false);
}