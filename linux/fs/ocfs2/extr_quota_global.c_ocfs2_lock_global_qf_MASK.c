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
struct ocfs2_mem_dqinfo {int /*<<< orphan*/  dqi_gqinode; struct buffer_head* dqi_gqi_bh; int /*<<< orphan*/  dqi_gqi_count; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
	int status;
	struct buffer_head *bh = NULL;

	status = FUNC5(oinfo->dqi_gqinode, &bh, ex);
	if (status < 0)
		return status;
	FUNC6(&dq_data_lock);
	if (!oinfo->dqi_gqi_count++)
		oinfo->dqi_gqi_bh = bh;
	else
		FUNC1(bh != oinfo->dqi_gqi_bh);
	FUNC7(&dq_data_lock);
	if (ex) {
		FUNC4(oinfo->dqi_gqinode);
		FUNC3(&FUNC0(oinfo->dqi_gqinode)->ip_alloc_sem);
	} else {
		FUNC2(&FUNC0(oinfo->dqi_gqinode)->ip_alloc_sem);
	}
	return 0;
}