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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ dead_node; } ;
struct dlm_ctxt {TYPE_1__ reco; int /*<<< orphan*/  name; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct dlm_ctxt *dlm,
					  u8 dead_node)
{
	FUNC0(&dlm->spinlock);
	if (dlm->reco.dead_node != dead_node)
		FUNC1(0, "%s: changing dead_node from %u to %u\n",
		     dlm->name, dlm->reco.dead_node, dead_node);
	dlm->reco.dead_node = dead_node;
}