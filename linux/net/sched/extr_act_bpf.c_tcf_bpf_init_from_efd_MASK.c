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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_bpf_cfg {char* bpf_name; int is_ebpf; struct bpf_prog* filter; } ;
struct nlattr {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_SCHED_ACT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 size_t TCA_ACT_BPF_FD ; 
 size_t TCA_ACT_BPF_NAME ; 
 struct bpf_prog* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 char* FUNC5 (struct nlattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nlattr **tb, struct tcf_bpf_cfg *cfg)
{
	struct bpf_prog *fp;
	char *name = NULL;
	u32 bpf_fd;

	bpf_fd = FUNC4(tb[TCA_ACT_BPF_FD]);

	fp = FUNC2(bpf_fd, BPF_PROG_TYPE_SCHED_ACT);
	if (FUNC0(fp))
		return FUNC1(fp);

	if (tb[TCA_ACT_BPF_NAME]) {
		name = FUNC5(tb[TCA_ACT_BPF_NAME], GFP_KERNEL);
		if (!name) {
			FUNC3(fp);
			return -ENOMEM;
		}
	}

	cfg->bpf_name = name;
	cfg->filter = fp;
	cfg->is_ebpf = true;

	return 0;
}