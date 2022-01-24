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
struct tcf_chain {int dummy; } ;
struct tc_action {int /*<<< orphan*/  act_cookie; int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats_hw; int /*<<< orphan*/  cpu_bstats; int /*<<< orphan*/  goto_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tc_action*) ; 
 struct tcf_chain* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tc_action *p)
{
	struct tcf_chain *chain = FUNC2(p->goto_chain, 1);

	FUNC0(p->cpu_bstats);
	FUNC0(p->cpu_bstats_hw);
	FUNC0(p->cpu_qstats);

	FUNC4(&p->act_cookie, NULL);
	if (chain)
		FUNC3(chain);

	FUNC1(p);
}