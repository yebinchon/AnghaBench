#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * effective; } ;
struct cgroup {TYPE_1__ bpf; } ;
struct bpf_cgroup_dev_ctx {short access_type; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_RUN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct bpf_cgroup_dev_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct cgroup* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(short dev_type, u32 major, u32 minor,
				      short access, enum bpf_attach_type type)
{
	struct cgroup *cgrp;
	struct bpf_cgroup_dev_ctx ctx = {
		.access_type = (access << 16) | dev_type,
		.major = major,
		.minor = minor,
	};
	int allow = 1;

	FUNC1();
	cgrp = FUNC3(current);
	allow = FUNC0(cgrp->bpf.effective[type], &ctx,
				   BPF_PROG_RUN);
	FUNC2();

	return !allow;
}