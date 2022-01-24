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
struct TYPE_2__ {int /*<<< orphan*/ * effective; } ;
struct cgroup {TYPE_1__ bpf; } ;
struct bpf_prog_array {int dummy; } ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog_array*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bpf_prog_array*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cgroup *cgrp,
				     enum bpf_attach_type type,
				     struct bpf_prog_array *old_array)
{
	FUNC2(cgrp->bpf.effective[type], old_array,
			   FUNC1(&cgroup_mutex));
	/* free prog array after grace period, since __cgroup_bpf_run_*()
	 * might be still walking the array
	 */
	FUNC0(old_array);
}