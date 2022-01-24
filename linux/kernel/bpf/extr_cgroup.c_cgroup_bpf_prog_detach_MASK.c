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
union bpf_attr {int /*<<< orphan*/  attach_type; int /*<<< orphan*/  attach_bpf_fd; int /*<<< orphan*/  target_fd; } ;
struct cgroup {int dummy; } ;
typedef  struct cgroup bpf_prog ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cgroup*) ; 
 int FUNC1 (struct cgroup*) ; 
 struct cgroup* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int FUNC4 (struct cgroup*,struct cgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cgroup* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cgroup*) ; 

int FUNC7(const union bpf_attr *attr, enum bpf_prog_type ptype)
{
	struct bpf_prog *prog;
	struct cgroup *cgrp;
	int ret;

	cgrp = FUNC5(attr->target_fd);
	if (FUNC0(cgrp))
		return FUNC1(cgrp);

	prog = FUNC2(attr->attach_bpf_fd, ptype);
	if (FUNC0(prog))
		prog = NULL;

	ret = FUNC4(cgrp, prog, attr->attach_type, 0);
	if (prog)
		FUNC3(prog);

	FUNC6(cgrp);
	return ret;
}