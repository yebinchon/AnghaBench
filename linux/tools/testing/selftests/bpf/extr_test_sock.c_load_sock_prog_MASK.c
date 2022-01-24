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
struct bpf_load_program_attr {int expected_attach_type; char* license; int log_level; struct bpf_insn const* insns; int /*<<< orphan*/  insns_cnt; int /*<<< orphan*/  prog_type; } ;
struct bpf_insn {int dummy; } ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_LOG_BUF_SIZE ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SOCK ; 
 int FUNC0 (struct bpf_load_program_attr*,char*,int /*<<< orphan*/ ) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_load_program_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_insn const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(const struct bpf_insn *prog,
			  enum bpf_attach_type attach_type)
{
	struct bpf_load_program_attr attr;
	int ret;

	FUNC2(&attr, 0, sizeof(struct bpf_load_program_attr));
	attr.prog_type = BPF_PROG_TYPE_CGROUP_SOCK;
	attr.expected_attach_type = attach_type;
	attr.insns = prog;
	attr.insns_cnt = FUNC3(attr.insns);
	attr.license = "GPL";
	attr.log_level = 2;

	ret = FUNC0(&attr, bpf_log_buf, BPF_LOG_BUF_SIZE);
	if (verbose && ret < 0)
		FUNC1(stderr, "%s\n", bpf_log_buf);

	return ret;
}