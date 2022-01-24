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
struct sd_data {int /*<<< orphan*/  sgc; int /*<<< orphan*/  sg; int /*<<< orphan*/  sds; int /*<<< orphan*/  sd; } ;
struct sched_domain {int /*<<< orphan*/  ref; struct sd_data* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct sched_domain** FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(int cpu, struct sched_domain *sd)
{
	struct sd_data *sdd = sd->private;

	FUNC0(*FUNC2(sdd->sd, cpu) != sd);
	*FUNC2(sdd->sd, cpu) = NULL;

	if (FUNC1(&(*FUNC2(sdd->sds, cpu))->ref))
		*FUNC2(sdd->sds, cpu) = NULL;

	if (FUNC1(&(*FUNC2(sdd->sg, cpu))->ref))
		*FUNC2(sdd->sg, cpu) = NULL;

	if (FUNC1(&(*FUNC2(sdd->sgc, cpu))->ref))
		*FUNC2(sdd->sgc, cpu) = NULL;
}