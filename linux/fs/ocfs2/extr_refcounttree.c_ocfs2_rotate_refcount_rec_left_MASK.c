#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_refcount_rec {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rl_used; TYPE_2__* rl_recs; } ;
struct ocfs2_refcount_block {TYPE_1__ rf_records; } ;
struct TYPE_6__ {scalar_t__ r_refcount; int /*<<< orphan*/  r_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ocfs2_refcount_block *rb,
					   int index)
{
	FUNC0(rb->rf_records.rl_recs[index].r_refcount !=
	       rb->rf_records.rl_recs[index+1].r_refcount);

	FUNC3(&rb->rf_records.rl_recs[index].r_clusters,
		     FUNC4(rb->rf_records.rl_recs[index+1].r_clusters));

	if (index < FUNC2(rb->rf_records.rl_used) - 2)
		FUNC5(&rb->rf_records.rl_recs[index + 1],
			&rb->rf_records.rl_recs[index + 2],
			sizeof(struct ocfs2_refcount_rec) *
			(FUNC2(rb->rf_records.rl_used) - index - 2));

	FUNC6(&rb->rf_records.rl_recs[FUNC2(rb->rf_records.rl_used) - 1],
	       0, sizeof(struct ocfs2_refcount_rec));
	FUNC1(&rb->rf_records.rl_used, -1);
}