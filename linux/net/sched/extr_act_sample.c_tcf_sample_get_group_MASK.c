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
typedef  int /*<<< orphan*/  tc_action_priv_destructor ;
struct tcf_sample {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  psample_group; } ;
struct tc_action {int dummy; } ;
struct psample_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct psample_group*) ; 
 struct psample_group* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcf_psample_group_put ; 
 struct tcf_sample* FUNC5 (struct tc_action const*) ; 

__attribute__((used)) static struct psample_group *
FUNC6(const struct tc_action *a,
		     tc_action_priv_destructor *destructor)
{
	struct tcf_sample *s = FUNC5(a);
	struct psample_group *group;

	FUNC3(&s->tcf_lock);
	group = FUNC2(s->psample_group,
					  FUNC0(&s->tcf_lock));
	if (group) {
		FUNC1(group);
		*destructor = tcf_psample_group_put;
	}
	FUNC4(&s->tcf_lock);

	return group;
}