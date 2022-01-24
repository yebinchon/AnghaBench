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
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_lockref; TYPE_2__* qd_gl; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_4__ {TYPE_1__ gl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gfs2_quota_data *qd)
{
	struct gfs2_sbd *sdp = qd->qd_gl->gl_name.ln_sbd;
	FUNC1(sdp, !FUNC0(&qd->qd_lockref));
	FUNC2(&qd->qd_lockref);
}