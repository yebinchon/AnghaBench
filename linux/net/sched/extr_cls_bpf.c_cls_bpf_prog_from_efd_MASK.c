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
typedef  int u32 ;
struct tcf_proto {TYPE_1__* chain; } ;
struct nlattr {int dummy; } ;
struct cls_bpf_prog {char* bpf_name; struct bpf_prog* filter; int /*<<< orphan*/ * bpf_ops; } ;
struct bpf_prog {scalar_t__ dst_needed; } ;
struct TYPE_2__ {int /*<<< orphan*/  block; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_SCHED_CLS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 size_t TCA_BPF_FD ; 
 size_t TCA_BPF_NAME ; 
 int TCA_CLS_FLAGS_SKIP_SW ; 
 struct bpf_prog* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 
 int FUNC4 (struct nlattr*) ; 
 char* FUNC5 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nlattr **tb, struct cls_bpf_prog *prog,
				 u32 gen_flags, const struct tcf_proto *tp)
{
	struct bpf_prog *fp;
	char *name = NULL;
	bool skip_sw;
	u32 bpf_fd;

	bpf_fd = FUNC4(tb[TCA_BPF_FD]);
	skip_sw = gen_flags & TCA_CLS_FLAGS_SKIP_SW;

	fp = FUNC2(bpf_fd, BPF_PROG_TYPE_SCHED_CLS, skip_sw);
	if (FUNC0(fp))
		return FUNC1(fp);

	if (tb[TCA_BPF_NAME]) {
		name = FUNC5(tb[TCA_BPF_NAME], GFP_KERNEL);
		if (!name) {
			FUNC3(fp);
			return -ENOMEM;
		}
	}

	prog->bpf_ops = NULL;
	prog->bpf_name = name;
	prog->filter = fp;

	if (fp->dst_needed)
		FUNC6(tp->chain->block);

	return 0;
}