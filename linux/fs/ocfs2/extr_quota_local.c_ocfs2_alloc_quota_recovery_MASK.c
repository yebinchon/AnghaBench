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
struct ocfs2_quota_recovery {int /*<<< orphan*/ * r_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int OCFS2_MAXQUOTAS ; 
 struct ocfs2_quota_recovery* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ocfs2_quota_recovery *FUNC2(void)
{
	int type;
	struct ocfs2_quota_recovery *rec;

	rec = FUNC1(sizeof(struct ocfs2_quota_recovery), GFP_NOFS);
	if (!rec)
		return NULL;
	for (type = 0; type < OCFS2_MAXQUOTAS; type++)
		FUNC0(&(rec->r_list[type]));
	return rec;
}