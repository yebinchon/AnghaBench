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
struct super_block {int dummy; } ;
struct quota_info {int /*<<< orphan*/  dqio_sem; } ;
struct kqid {int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  dqi_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct kqid*) ; 
 TYPE_1__* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct quota_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, struct kqid *qid)
{
	struct quota_info *dqopt = FUNC3(sb);
	int ret;

	FUNC0(&dqopt->dqio_sem);
	ret = FUNC1(FUNC2(sb, qid->type)->dqi_priv, qid);
	FUNC4(&dqopt->dqio_sem);
	return ret;
}