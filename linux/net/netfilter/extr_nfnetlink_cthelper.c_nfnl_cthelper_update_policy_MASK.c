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
struct nf_conntrack_helper {int expect_class_max; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  NFCTH_POLICY_SET_MAX ; 
 size_t NFCTH_POLICY_SET_NUM ; 
 int /*<<< orphan*/  nfnl_cthelper_expect_policy_set ; 
 int FUNC0 (struct nlattr**,struct nf_conntrack_helper*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nf_conntrack_helper *helper,
				       const struct nlattr *attr)
{
	struct nlattr *tb[NFCTH_POLICY_SET_MAX + 1];
	unsigned int class_max;
	int err;

	err = FUNC2(tb, NFCTH_POLICY_SET_MAX, attr,
					  nfnl_cthelper_expect_policy_set,
					  NULL);
	if (err < 0)
		return err;

	if (!tb[NFCTH_POLICY_SET_NUM])
		return -EINVAL;

	class_max = FUNC3(FUNC1(tb[NFCTH_POLICY_SET_NUM]));
	if (helper->expect_class_max + 1 != class_max)
		return -EBUSY;

	return FUNC0(tb, helper);
}