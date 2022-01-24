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
struct ocfs2_super {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct dquot {int /*<<< orphan*/  dq_sb; TYPE_2__ dq_id; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  dqio_sem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_QWRITE_CREDITS ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct dquot*) ; 
 int /*<<< orphan*/ * FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dquot *dquot)
{
	handle_t *handle;
	struct ocfs2_super *osb = FUNC1(dquot->dq_sb);
	int status = 0;

	FUNC10(FUNC4(&init_user_ns, dquot->dq_id),
				dquot->dq_id.type);

	handle = FUNC8(osb, OCFS2_QWRITE_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC5(status);
		goto out;
	}
	FUNC3(&FUNC9(dquot->dq_sb)->dqio_sem);
	status = FUNC7(dquot);
	FUNC11(&FUNC9(dquot->dq_sb)->dqio_sem);
	FUNC6(osb, handle);
out:
	return status;
}