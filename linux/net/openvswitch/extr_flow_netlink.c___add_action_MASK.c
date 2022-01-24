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
struct nlattr {int nla_type; int nla_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct nlattr* FUNC6 (struct sw_flow_actions**,int,int) ; 

__attribute__((used)) static struct nlattr *FUNC7(struct sw_flow_actions **sfa,
				   int attrtype, void *data, int len, bool log)
{
	struct nlattr *a;

	a = FUNC6(sfa, FUNC3(len), log);
	if (FUNC0(a))
		return a;

	a->nla_type = attrtype;
	a->nla_len = FUNC3(len);

	if (data)
		FUNC1(FUNC4(a), data, len);
	FUNC2((unsigned char *) a + a->nla_len, 0, FUNC5(len));

	return a;
}