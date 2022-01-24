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
struct gfs2_quota_data {int /*<<< orphan*/  qd_flags; TYPE_2__* qd_gl; } ;
struct TYPE_3__ {int /*<<< orphan*/  ln_sbd; } ;
struct TYPE_4__ {TYPE_1__ gl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  QDF_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gfs2_quota_data *qd)
{
	FUNC2(qd->qd_gl->gl_name.ln_sbd,
			 FUNC5(QDF_LOCKED, &qd->qd_flags));
	FUNC1(QDF_LOCKED, &qd->qd_flags);
	FUNC0(qd);
	FUNC4(qd);
	FUNC3(qd);
}