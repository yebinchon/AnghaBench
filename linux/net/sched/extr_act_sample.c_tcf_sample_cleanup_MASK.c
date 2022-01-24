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
struct tcf_sample {int /*<<< orphan*/  psample_group; } ;
struct tc_action {int dummy; } ;
struct psample_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct psample_group*) ; 
 struct psample_group* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct tcf_sample* FUNC3 (struct tc_action*) ; 

__attribute__((used)) static void FUNC4(struct tc_action *a)
{
	struct tcf_sample *s = FUNC3(a);
	struct psample_group *psample_group;

	/* last reference to action, no need to lock */
	psample_group = FUNC2(s->psample_group, 1);
	FUNC0(s->psample_group, NULL);
	if (psample_group)
		FUNC1(psample_group);
}