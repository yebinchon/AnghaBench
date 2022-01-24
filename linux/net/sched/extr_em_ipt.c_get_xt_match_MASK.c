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
typedef  int /*<<< orphan*/  u8 ;
struct xt_match {int dummy; } ;
struct nlattr {int dummy; } ;
struct em_ipt_xt_match {int (* validate_match_data ) (struct nlattr**,int /*<<< orphan*/ ) ;scalar_t__ match_name; } ;

/* Variables and functions */
 int EINVAL ; 
 struct xt_match* FUNC0 (int) ; 
 size_t TCA_EM_IPT_MATCH_NAME ; 
 size_t TCA_EM_IPT_MATCH_REVISION ; 
 size_t TCA_EM_IPT_NFPROTO ; 
 struct em_ipt_xt_match* em_ipt_xt_matches ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ) ; 
 struct xt_match* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xt_match *FUNC6(struct nlattr **tb)
{
	const struct em_ipt_xt_match *m;
	struct nlattr *mname_attr;
	u8 nfproto, mrev = 0;
	int ret;

	mname_attr = tb[TCA_EM_IPT_MATCH_NAME];
	for (m = em_ipt_xt_matches; m->match_name; m++) {
		if (!FUNC2(mname_attr, m->match_name))
			break;
	}

	if (!m->match_name) {
		FUNC3("Unsupported xt match");
		return FUNC0(-EINVAL);
	}

	if (tb[TCA_EM_IPT_MATCH_REVISION])
		mrev = FUNC1(tb[TCA_EM_IPT_MATCH_REVISION]);

	ret = m->validate_match_data(tb, mrev);
	if (ret < 0)
		return FUNC0(ret);

	nfproto = FUNC1(tb[TCA_EM_IPT_NFPROTO]);
	return FUNC5(nfproto, m->match_name, mrev);
}