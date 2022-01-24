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
struct quota_info {int /*<<< orphan*/  dqio_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct dquot {TYPE_1__ dq_id; int /*<<< orphan*/  dq_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  dqi_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct dquot*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct quota_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dquot *dquot)
{
	struct quota_info *dqopt = FUNC3(dquot->dq_sb);
	int ret;

	FUNC0(&dqopt->dqio_sem);
	ret = FUNC1(FUNC2(dquot->dq_sb, dquot->dq_id.type)->dqi_priv, dquot);
	FUNC4(&dqopt->dqio_sem);

	return ret;
}