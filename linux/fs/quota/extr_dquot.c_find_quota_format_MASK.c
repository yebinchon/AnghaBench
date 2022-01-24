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
struct quota_format_type {int qf_fmt_id; int /*<<< orphan*/  qf_owner; struct quota_format_type* qf_next; } ;
struct TYPE_2__ {int qm_fmt_id; int /*<<< orphan*/  qm_mod_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  dq_list_lock ; 
 TYPE_1__* module_names ; 
 struct quota_format_type* quota_formats ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct quota_format_type *FUNC4(int id)
{
	struct quota_format_type *actqf;

	FUNC1(&dq_list_lock);
	for (actqf = quota_formats; actqf && actqf->qf_fmt_id != id;
	     actqf = actqf->qf_next)
		;
	if (!actqf || !FUNC3(actqf->qf_owner)) {
		int qm;

		FUNC2(&dq_list_lock);

		for (qm = 0; module_names[qm].qm_fmt_id &&
			     module_names[qm].qm_fmt_id != id; qm++)
			;
		if (!module_names[qm].qm_fmt_id ||
		    FUNC0(module_names[qm].qm_mod_name))
			return NULL;

		FUNC1(&dq_list_lock);
		for (actqf = quota_formats; actqf && actqf->qf_fmt_id != id;
		     actqf = actqf->qf_next)
			;
		if (actqf && !FUNC3(actqf->qf_owner))
			actqf = NULL;
	}
	FUNC2(&dq_list_lock);
	return actqf;
}