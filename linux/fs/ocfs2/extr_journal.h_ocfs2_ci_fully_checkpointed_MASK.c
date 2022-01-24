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
struct ocfs2_journal {int /*<<< orphan*/  j_trans_id; } ;
struct ocfs2_caching_info {int /*<<< orphan*/  ci_last_trans; } ;
struct TYPE_2__ {struct ocfs2_journal* journal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trans_inc_lock ; 

__attribute__((used)) static inline int FUNC5(struct ocfs2_caching_info *ci)
{
	int ret;
	struct ocfs2_journal *journal =
		FUNC0(FUNC1(ci))->journal;

	FUNC2(&trans_inc_lock);
	ret = FUNC4(journal->j_trans_id, ci->ci_last_trans);
	FUNC3(&trans_inc_lock);
	return ret;
}