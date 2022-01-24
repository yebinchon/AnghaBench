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
struct bpf_prog_load_attr {char* file; } ;
struct bpf_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_object*) ; 
 int FUNC2 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int FUNC3 () ; 
 int FUNC4 (struct bpf_object*,int,char*) ; 

__attribute__((used)) static void FUNC5(int cgroup_fd)
{
	struct bpf_prog_load_attr attr = {
		.file = "./sockopt_sk.o",
	};
	struct bpf_object *obj;
	int ignored;
	int err;

	err = FUNC2(&attr, &obj, &ignored);
	if (FUNC0(err))
		return;

	err = FUNC4(obj, cgroup_fd, "cgroup/getsockopt");
	if (FUNC0(err))
		goto close_bpf_object;

	err = FUNC4(obj, cgroup_fd, "cgroup/setsockopt");
	if (FUNC0(err))
		goto close_bpf_object;

	FUNC0(FUNC3());

close_bpf_object:
	FUNC1(obj);
}