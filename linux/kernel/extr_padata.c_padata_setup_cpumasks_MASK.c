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
struct workqueue_attrs {int /*<<< orphan*/  cpumask; } ;
struct TYPE_4__ {int /*<<< orphan*/  pcpu; int /*<<< orphan*/  cbcpu; } ;
struct parallel_data {TYPE_2__ cpumask; TYPE_1__* pinst; } ;
struct cpumask {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parallel_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct workqueue_attrs* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,struct workqueue_attrs*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct workqueue_attrs*) ; 

__attribute__((used)) static int FUNC7(struct parallel_data *pd,
				 const struct cpumask *pcpumask,
				 const struct cpumask *cbcpumask)
{
	struct workqueue_attrs *attrs;
	int err = -ENOMEM;

	if (!FUNC0(&pd->cpumask.pcpu, GFP_KERNEL))
		goto out;
	FUNC3(pd->cpumask.pcpu, pcpumask, cpu_online_mask);

	if (!FUNC0(&pd->cpumask.cbcpu, GFP_KERNEL))
		goto free_pcpu_mask;
	FUNC3(pd->cpumask.cbcpu, cbcpumask, cpu_online_mask);

	attrs = FUNC1();
	if (!attrs)
		goto free_cbcpu_mask;

	/* Restrict parallel_wq workers to pd->cpumask.pcpu. */
	FUNC4(attrs->cpumask, pd->cpumask.pcpu);
	err = FUNC2(pd->pinst->parallel_wq, attrs);
	FUNC6(attrs);
	if (err < 0)
		goto free_cbcpu_mask;

	return 0;

free_cbcpu_mask:
	FUNC5(pd->cpumask.cbcpu);
free_pcpu_mask:
	FUNC5(pd->cpumask.pcpu);
out:
	return err;
}