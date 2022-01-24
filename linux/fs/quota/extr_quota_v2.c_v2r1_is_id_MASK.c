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
struct v2r1_disk_dqblk {int /*<<< orphan*/  dqb_id; } ;
struct qtree_mem_dqinfo {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct dquot {TYPE_2__ dq_id; int /*<<< orphan*/  dq_sb; } ;
struct TYPE_3__ {struct qtree_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__) ; 
 scalar_t__ FUNC3 (struct qtree_mem_dqinfo*,void*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *dp, struct dquot *dquot)
{
	struct v2r1_disk_dqblk *d = dp;
	struct qtree_mem_dqinfo *info =
			FUNC4(dquot->dq_sb, dquot->dq_id.type)->dqi_priv;

	if (FUNC3(info, dp))
		return 0;
	return FUNC2(FUNC1(&init_user_ns, dquot->dq_id.type,
				FUNC0(d->dqb_id)),
		      dquot->dq_id);
}