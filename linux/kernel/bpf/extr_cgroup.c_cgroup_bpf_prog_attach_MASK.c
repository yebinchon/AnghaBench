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
union bpf_attr {int /*<<< orphan*/  attach_flags; int /*<<< orphan*/  attach_type; int /*<<< orphan*/  target_fd; } ;
struct cgroup {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cgroup*) ; 
 int FUNC1 (struct cgroup*) ; 
 int FUNC2 (struct cgroup*,struct bpf_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cgroup* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cgroup*) ; 

int FUNC5(const union bpf_attr *attr,
			   enum bpf_prog_type ptype, struct bpf_prog *prog)
{
	struct cgroup *cgrp;
	int ret;

	cgrp = FUNC3(attr->target_fd);
	if (FUNC0(cgrp))
		return FUNC1(cgrp);

	ret = FUNC2(cgrp, prog, attr->attach_type,
				attr->attach_flags);
	FUNC4(cgrp);
	return ret;
}