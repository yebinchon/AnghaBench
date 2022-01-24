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
struct ocfs2_mem_dqinfo {int /*<<< orphan*/ * dqi_gqi_bh; int /*<<< orphan*/  dqi_gqi_count; int /*<<< orphan*/  dqi_gqinode; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
	if (ex) {
		FUNC7(&FUNC0(oinfo->dqi_gqinode)->ip_alloc_sem);
		FUNC2(oinfo->dqi_gqinode);
	} else {
		FUNC6(&FUNC0(oinfo->dqi_gqinode)->ip_alloc_sem);
	}
	FUNC3(oinfo->dqi_gqinode, ex);
	FUNC1(oinfo->dqi_gqi_bh);
	FUNC4(&dq_data_lock);
	if (!--oinfo->dqi_gqi_count)
		oinfo->dqi_gqi_bh = NULL;
	FUNC5(&dq_data_lock);
}