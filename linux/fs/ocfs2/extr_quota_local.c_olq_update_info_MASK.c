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
struct ocfs2_mem_dqinfo {int /*<<< orphan*/  dqi_blocks; int /*<<< orphan*/  dqi_chunks; int /*<<< orphan*/  dqi_flags; } ;
struct ocfs2_local_disk_dqinfo {void* dqi_blocks; void* dqi_chunks; void* dqi_flags; } ;
struct mem_dqinfo {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ OCFS2_LOCAL_INFO_OFF ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct buffer_head *bh, void *private)
{
	struct mem_dqinfo *info = private;
	struct ocfs2_mem_dqinfo *oinfo = info->dqi_priv;
	struct ocfs2_local_disk_dqinfo *ldinfo;

	ldinfo = (struct ocfs2_local_disk_dqinfo *)(bh->b_data +
						OCFS2_LOCAL_INFO_OFF);
	FUNC1(&dq_data_lock);
	ldinfo->dqi_flags = FUNC0(oinfo->dqi_flags);
	ldinfo->dqi_chunks = FUNC0(oinfo->dqi_chunks);
	ldinfo->dqi_blocks = FUNC0(oinfo->dqi_blocks);
	FUNC2(&dq_data_lock);
}