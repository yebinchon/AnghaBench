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
struct sysctl_test {scalar_t__ result; int /*<<< orphan*/  prog_file; } ;
struct bpf_prog_load_attr {int /*<<< orphan*/  prog_type; int /*<<< orphan*/  file; } ;
struct bpf_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SYSCTL ; 
 scalar_t__ LOAD_REJECT ; 
 scalar_t__ FUNC0 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog_load_attr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct sysctl_test *test)
{
	struct bpf_prog_load_attr attr;
	struct bpf_object *obj;
	int prog_fd;

	FUNC2(&attr, 0, sizeof(struct bpf_prog_load_attr));
	attr.file = test->prog_file;
	attr.prog_type = BPF_PROG_TYPE_CGROUP_SYSCTL;

	if (FUNC0(&attr, &obj, &prog_fd)) {
		if (test->result != LOAD_REJECT)
			FUNC1(">>> Loading program (%s) error.\n",
				test->prog_file);
		return -1;
	}

	return prog_fd;
}