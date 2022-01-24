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
struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dqi_sb; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; struct ocfs2_lock_res dqi_gqlock; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*) ; 

void FUNC4(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
	struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
	struct ocfs2_super *osb = FUNC0(oinfo->dqi_gi.dqi_sb);
	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;

	if (!FUNC2(osb) && !FUNC3(osb))
		FUNC1(osb, lockres, level);
}