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
struct TYPE_2__ {int /*<<< orphan*/  dead_node; } ;
struct dlm_ctxt {int /*<<< orphan*/  recovery_map; TYPE_1__ reco; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2NM_INVALID_NODE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct dlm_ctxt *dlm)
{
	FUNC0(&dlm->spinlock);
	FUNC1(dlm->reco.dead_node, dlm->recovery_map);
	FUNC2(dlm, O2NM_INVALID_NODE_NUM);
	FUNC3(dlm, O2NM_INVALID_NODE_NUM);
}