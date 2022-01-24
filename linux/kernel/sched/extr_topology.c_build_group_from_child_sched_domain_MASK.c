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
struct sched_group {int /*<<< orphan*/  ref; } ;
struct sched_domain {struct sched_domain* child; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 struct sched_group* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sched_domain*) ; 
 struct cpumask* FUNC6 (struct sched_group*) ; 

__attribute__((used)) static struct sched_group *
FUNC7(struct sched_domain *sd, int cpu)
{
	struct sched_group *sg;
	struct cpumask *sg_span;

	sg = FUNC4(sizeof(struct sched_group) + FUNC3(),
			GFP_KERNEL, FUNC1(cpu));

	if (!sg)
		return NULL;

	sg_span = FUNC6(sg);
	if (sd->child)
		FUNC2(sg_span, FUNC5(sd->child));
	else
		FUNC2(sg_span, FUNC5(sd));

	FUNC0(&sg->ref);
	return sg;
}