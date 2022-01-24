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
struct tcf_ife_params {int dummy; } ;
struct tcf_ife_info {int /*<<< orphan*/  params; int /*<<< orphan*/  tcf_lock; } ;
struct tc_action {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tc_action*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_ife_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 struct tcf_ife_params* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tcf_ife_info* FUNC5 (struct tc_action*) ; 

__attribute__((used)) static void FUNC6(struct tc_action *a)
{
	struct tcf_ife_info *ife = FUNC5(a);
	struct tcf_ife_params *p;

	FUNC3(&ife->tcf_lock);
	FUNC0(a);
	FUNC4(&ife->tcf_lock);

	p = FUNC2(ife->params, 1);
	if (p)
		FUNC1(p, rcu);
}