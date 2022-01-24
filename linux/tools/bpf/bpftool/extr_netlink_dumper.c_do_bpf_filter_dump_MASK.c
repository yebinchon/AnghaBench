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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 size_t TCA_BPF_ACT ; 
 size_t TCA_BPF_ID ; 
 int /*<<< orphan*/  TCA_BPF_MAX ; 
 size_t TCA_BPF_NAME ; 
 int FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 scalar_t__ FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nlattr *attr)
{
	struct nlattr *tb[TCA_BPF_MAX + 1];
	int ret;

	if (FUNC5(tb, TCA_BPF_MAX, attr, NULL) < 0)
		return -LIBBPF_ERRNO__NLPARSE;

	if (tb[TCA_BPF_NAME])
		FUNC0("name", " %s",
			     FUNC3(tb[TCA_BPF_NAME]));
	if (tb[TCA_BPF_ID])
		FUNC1("id", " id %u",
			      FUNC4(tb[TCA_BPF_ID]));
	if (tb[TCA_BPF_ACT]) {
		ret = FUNC2(tb[TCA_BPF_ACT]);
		if (ret)
			return ret;
	}

	return 0;
}