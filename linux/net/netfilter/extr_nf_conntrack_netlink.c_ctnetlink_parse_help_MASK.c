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
 size_t CTA_HELP_INFO ; 
 int /*<<< orphan*/  CTA_HELP_MAX ; 
 size_t CTA_HELP_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  help_nla_policy ; 
 char* FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const struct nlattr *attr, char **helper_name,
				struct nlattr **helpinfo)
{
	int err;
	struct nlattr *tb[CTA_HELP_MAX+1];

	err = FUNC1(tb, CTA_HELP_MAX, attr,
					  help_nla_policy, NULL);
	if (err < 0)
		return err;

	if (!tb[CTA_HELP_NAME])
		return -EINVAL;

	*helper_name = FUNC0(tb[CTA_HELP_NAME]);

	if (tb[CTA_HELP_INFO])
		*helpinfo = tb[CTA_HELP_INFO];

	return 0;
}