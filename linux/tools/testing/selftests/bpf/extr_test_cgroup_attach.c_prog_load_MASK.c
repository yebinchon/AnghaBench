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
struct bpf_insn {int dummy; } ;
typedef  int /*<<< orphan*/  prog ;

/* Variables and functions */
 struct bpf_insn FUNC0 () ; 
 int /*<<< orphan*/  BPF_LOG_BUF_SIZE ; 
 struct bpf_insn FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_CGROUP_SKB ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int FUNC2 (int /*<<< orphan*/ ,struct bpf_insn*,size_t,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(int verdict)
{
	int ret;
	struct bpf_insn prog[] = {
		FUNC1(BPF_REG_0, verdict), /* r0 = verdict */
		FUNC0(),
	};
	size_t insns_cnt = sizeof(prog) / sizeof(struct bpf_insn);

	ret = FUNC2(BPF_PROG_TYPE_CGROUP_SKB,
			       prog, insns_cnt, "GPL", 0,
			       bpf_log_buf, BPF_LOG_BUF_SIZE);

	if (ret < 0) {
		FUNC3("Loading program");
		FUNC4("Output from verifier:\n%s\n-------\n", bpf_log_buf);
		return 0;
	}
	return ret;
}