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
struct sw_flow_actions {int dummy; } ;
struct nlattr {int /*<<< orphan*/  nla_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nlattr*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*,struct nlattr const*,int) ; 
 struct nlattr* FUNC4 (struct sw_flow_actions**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(const struct nlattr *from,
		       struct sw_flow_actions **sfa, bool log)
{
	int totlen = FUNC1(from->nla_len);
	struct nlattr *to;

	to = FUNC4(sfa, from->nla_len, log);
	if (FUNC0(to))
		return FUNC2(to);

	FUNC3(to, from, totlen);
	return 0;
}