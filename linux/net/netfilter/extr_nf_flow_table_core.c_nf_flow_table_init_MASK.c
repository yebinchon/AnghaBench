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
struct nf_flowtable {int /*<<< orphan*/  list; int /*<<< orphan*/  gc_work; int /*<<< orphan*/  rhashtable; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flowtable_lock ; 
 int /*<<< orphan*/  flowtables ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_flow_offload_rhash_params ; 
 int /*<<< orphan*/  nf_flow_offload_work_gc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

int FUNC6(struct nf_flowtable *flowtable)
{
	int err;

	FUNC0(&flowtable->gc_work, nf_flow_offload_work_gc);

	err = FUNC5(&flowtable->rhashtable,
			      &nf_flow_offload_rhash_params);
	if (err < 0)
		return err;

	FUNC4(system_power_efficient_wq,
			   &flowtable->gc_work, HZ);

	FUNC2(&flowtable_lock);
	FUNC1(&flowtable->list, &flowtables);
	FUNC3(&flowtable_lock);

	return 0;
}