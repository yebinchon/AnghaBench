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
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 int /*<<< orphan*/  TCA_ACT_MAX_PRIO ; 
 size_t TCA_ACT_TAB ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcf_action_policy ; 

__attribute__((used)) static struct nlattr *FUNC5(struct nlattr **nla)
{
	struct nlattr *tb1, *tb2[TCA_ACT_MAX + 1];
	struct nlattr *tb[TCA_ACT_MAX_PRIO + 1];
	struct nlattr *kind;

	tb1 = nla[TCA_ACT_TAB];
	if (tb1 == NULL)
		return NULL;

	if (FUNC3(tb, TCA_ACT_MAX_PRIO, FUNC1(tb1), FUNC0(FUNC2(tb1)), NULL, NULL) < 0)
		return NULL;

	if (tb[1] == NULL)
		return NULL;
	if (FUNC4(tb2, TCA_ACT_MAX, tb[1], tcf_action_policy, NULL) < 0)
		return NULL;
	kind = tb2[TCA_ACT_KIND];

	return kind;
}