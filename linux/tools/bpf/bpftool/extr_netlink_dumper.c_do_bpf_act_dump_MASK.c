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
 int LIBBPF_ERRNO__NLPARSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int TCA_ACT_MAX_PRIO ; 
 int FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nlattr *attr)
{
	struct nlattr *tb[TCA_ACT_MAX_PRIO + 1];
	int act, ret;

	if (FUNC3(tb, TCA_ACT_MAX_PRIO, attr, NULL) < 0)
		return -LIBBPF_ERRNO__NLPARSE;

	FUNC1("act", " %s [");
	for (act = 0; act <= TCA_ACT_MAX_PRIO; act++) {
		ret = FUNC2(tb[act]);
		if (ret)
			break;
	}
	FUNC0("] ");

	return ret;
}