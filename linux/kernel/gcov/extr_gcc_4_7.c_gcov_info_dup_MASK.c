#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gcov_info {unsigned int n_functions; TYPE_1__** functions; int /*<<< orphan*/ * filename; int /*<<< orphan*/ * next; } ;
struct gcov_fn_info {int dummy; } ;
struct gcov_ctr_info {int num; int /*<<< orphan*/  values; } ;
typedef  int /*<<< orphan*/  gcov_type ;
struct TYPE_3__ {struct gcov_ctr_info* ctrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 TYPE_1__** FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 struct gcov_info* FUNC2 (struct gcov_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 unsigned int FUNC6 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 

struct gcov_info *FUNC8(struct gcov_info *info)
{
	struct gcov_info *dup;
	struct gcov_ctr_info *dci_ptr; /* dst counter info */
	struct gcov_ctr_info *sci_ptr; /* src counter info */
	unsigned int active;
	unsigned int fi_idx; /* function info idx */
	unsigned int ct_idx; /* counter type idx */
	size_t fi_size; /* function info size */
	size_t cv_size; /* counter values size */

	dup = FUNC2(info, sizeof(*dup), GFP_KERNEL);
	if (!dup)
		return NULL;

	dup->next = NULL;
	dup->filename = NULL;
	dup->functions = NULL;

	dup->filename = FUNC3(info->filename, GFP_KERNEL);
	if (!dup->filename)
		goto err_free;

	dup->functions = FUNC1(info->n_functions,
				 sizeof(struct gcov_fn_info *), GFP_KERNEL);
	if (!dup->functions)
		goto err_free;

	active = FUNC6(info);
	fi_size = sizeof(struct gcov_fn_info);
	fi_size += sizeof(struct gcov_ctr_info) * active;

	for (fi_idx = 0; fi_idx < info->n_functions; fi_idx++) {
		dup->functions[fi_idx] = FUNC4(fi_size, GFP_KERNEL);
		if (!dup->functions[fi_idx])
			goto err_free;

		*(dup->functions[fi_idx]) = *(info->functions[fi_idx]);

		sci_ptr = info->functions[fi_idx]->ctrs;
		dci_ptr = dup->functions[fi_idx]->ctrs;

		for (ct_idx = 0; ct_idx < active; ct_idx++) {

			cv_size = sizeof(gcov_type) * sci_ptr->num;

			dci_ptr->values = FUNC7(cv_size);

			if (!dci_ptr->values)
				goto err_free;

			dci_ptr->num = sci_ptr->num;
			FUNC5(dci_ptr->values, sci_ptr->values, cv_size);

			sci_ptr++;
			dci_ptr++;
		}
	}

	return dup;
err_free:
	FUNC0(dup);
	return NULL;
}