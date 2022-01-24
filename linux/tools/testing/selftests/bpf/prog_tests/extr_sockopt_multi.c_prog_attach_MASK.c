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
struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_ALLOW_MULTI ; 
 struct bpf_program* FUNC0 (struct bpf_object*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_program*) ; 
 int FUNC3 (char const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(struct bpf_object *obj, int cgroup_fd, const char *title)
{
	enum bpf_attach_type attach_type;
	enum bpf_prog_type prog_type;
	struct bpf_program *prog;
	int err;

	err = FUNC3(title, &prog_type, &attach_type);
	if (err) {
		FUNC4("Failed to deduct types for %s BPF program", title);
		return -1;
	}

	prog = FUNC0(obj, title);
	if (!prog) {
		FUNC4("Failed to find %s BPF program", title);
		return -1;
	}

	err = FUNC1(FUNC2(prog), cgroup_fd,
			      attach_type, BPF_F_ALLOW_MULTI);
	if (err) {
		FUNC4("Failed to attach %s BPF program", title);
		return -1;
	}

	return 0;
}