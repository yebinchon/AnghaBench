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
union bpf_attr {int /*<<< orphan*/  btf_log_size; int /*<<< orphan*/  btf_log_buf; int /*<<< orphan*/  btf_log_level; int /*<<< orphan*/  btf_size; int /*<<< orphan*/  btf; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btf*) ; 
 int FUNC1 (struct btf*) ; 
 int FUNC2 (struct btf*) ; 
 int FUNC3 (struct btf*) ; 
 int /*<<< orphan*/  FUNC4 (struct btf*) ; 
 struct btf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(const union bpf_attr *attr)
{
	struct btf *btf;
	int ret;

	btf = FUNC5(FUNC7(attr->btf),
			attr->btf_size, attr->btf_log_level,
			FUNC7(attr->btf_log_buf),
			attr->btf_log_size);
	if (FUNC0(btf))
		return FUNC1(btf);

	ret = FUNC3(btf);
	if (ret) {
		FUNC4(btf);
		return ret;
	}

	/*
	 * The BTF ID is published to the userspace.
	 * All BTF free must go through call_rcu() from
	 * now on (i.e. free by calling btf_put()).
	 */

	ret = FUNC2(btf);
	if (ret < 0)
		FUNC6(btf);

	return ret;
}