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
struct gcov_info {int n_functions; struct gcov_ctr_info* counts; int /*<<< orphan*/  functions; int /*<<< orphan*/  filename; int /*<<< orphan*/  ctr_mask; int /*<<< orphan*/  stamp; int /*<<< orphan*/  version; } ;
struct gcov_ctr_info {int num; int /*<<< orphan*/  values; int /*<<< orphan*/  merge; } ;
typedef  int /*<<< orphan*/  gcov_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  counts ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 int FUNC1 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gcov_info* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 unsigned int FUNC6 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct gcov_info*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 

struct gcov_info *FUNC9(struct gcov_info *info)
{
	struct gcov_info *dup;
	unsigned int i;
	unsigned int active;

	/* Duplicate gcov_info. */
	active = FUNC6(info);
	dup = FUNC4(FUNC7(dup, counts, active), GFP_KERNEL);
	if (!dup)
		return NULL;
	dup->version		= info->version;
	dup->stamp		= info->stamp;
	dup->n_functions	= info->n_functions;
	dup->ctr_mask		= info->ctr_mask;
	/* Duplicate filename. */
	dup->filename		= FUNC3(info->filename, GFP_KERNEL);
	if (!dup->filename)
		goto err_free;
	/* Duplicate table of functions. */
	dup->functions = FUNC2(info->functions, info->n_functions *
				 FUNC1(info), GFP_KERNEL);
	if (!dup->functions)
		goto err_free;
	/* Duplicate counter arrays. */
	for (i = 0; i < active ; i++) {
		struct gcov_ctr_info *ctr = &info->counts[i];
		size_t size = ctr->num * sizeof(gcov_type);

		dup->counts[i].num = ctr->num;
		dup->counts[i].merge = ctr->merge;
		dup->counts[i].values = FUNC8(size);
		if (!dup->counts[i].values)
			goto err_free;
		FUNC5(dup->counts[i].values, ctr->values, size);
	}
	return dup;

err_free:
	FUNC0(dup);
	return NULL;
}