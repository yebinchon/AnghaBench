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
typedef  int u16 ;
struct sock_fprog_kern {int len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;
struct nlattr {int dummy; } ;
struct cls_bpf_prog {int bpf_num_ops; struct bpf_prog* filter; int /*<<< orphan*/ * bpf_name; struct sock_filter* bpf_ops; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int BPF_MAXINSNS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t TCA_BPF_OPS ; 
 size_t TCA_BPF_OPS_LEN ; 
 int FUNC0 (struct bpf_prog**,struct sock_fprog_kern*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock_filter*) ; 
 struct sock_filter* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 

__attribute__((used)) static int FUNC6(struct nlattr **tb, struct cls_bpf_prog *prog)
{
	struct sock_filter *bpf_ops;
	struct sock_fprog_kern fprog_tmp;
	struct bpf_prog *fp;
	u16 bpf_size, bpf_num_ops;
	int ret;

	bpf_num_ops = FUNC4(tb[TCA_BPF_OPS_LEN]);
	if (bpf_num_ops > BPF_MAXINSNS || bpf_num_ops == 0)
		return -EINVAL;

	bpf_size = bpf_num_ops * sizeof(*bpf_ops);
	if (bpf_size != FUNC5(tb[TCA_BPF_OPS]))
		return -EINVAL;

	bpf_ops = FUNC2(FUNC3(tb[TCA_BPF_OPS]), bpf_size, GFP_KERNEL);
	if (bpf_ops == NULL)
		return -ENOMEM;

	fprog_tmp.len = bpf_num_ops;
	fprog_tmp.filter = bpf_ops;

	ret = FUNC0(&fp, &fprog_tmp);
	if (ret < 0) {
		FUNC1(bpf_ops);
		return ret;
	}

	prog->bpf_ops = bpf_ops;
	prog->bpf_num_ops = bpf_num_ops;
	prog->bpf_name = NULL;
	prog->filter = fp;

	return 0;
}