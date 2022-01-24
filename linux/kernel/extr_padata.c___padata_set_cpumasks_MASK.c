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
struct parallel_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cbcpu; int /*<<< orphan*/  pcpu; } ;
struct padata_instance {TYPE_1__ cpumask; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct padata_instance*) ; 
 int /*<<< orphan*/  FUNC1 (struct padata_instance*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct parallel_data* FUNC3 (struct padata_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct padata_instance*,struct parallel_data*) ; 
 int FUNC5 (struct padata_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct padata_instance *pinst,
				 cpumask_var_t pcpumask,
				 cpumask_var_t cbcpumask)
{
	int valid;
	struct parallel_data *pd;

	valid = FUNC5(pinst, pcpumask);
	if (!valid) {
		FUNC1(pinst);
		goto out_replace;
	}

	valid = FUNC5(pinst, cbcpumask);
	if (!valid)
		FUNC1(pinst);

out_replace:
	pd = FUNC3(pinst, pcpumask, cbcpumask);
	if (!pd)
		return -ENOMEM;

	FUNC2(pinst->cpumask.pcpu, pcpumask);
	FUNC2(pinst->cpumask.cbcpu, cbcpumask);

	FUNC4(pinst, pd);

	if (valid)
		FUNC0(pinst);

	return 0;
}