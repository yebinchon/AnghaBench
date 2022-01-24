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
struct nlattr {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct bpf_lwt_prog {struct bpf_prog* prog; int /*<<< orphan*/  name; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 size_t LWT_BPF_PROG_FD ; 
 int /*<<< orphan*/  LWT_BPF_PROG_MAX ; 
 size_t LWT_BPF_PROG_NAME ; 
 int FUNC1 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bpf_prog_policy ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nlattr *attr, struct bpf_lwt_prog *prog,
			  enum bpf_prog_type type)
{
	struct nlattr *tb[LWT_BPF_PROG_MAX + 1];
	struct bpf_prog *p;
	int ret;
	u32 fd;

	ret = FUNC5(tb, LWT_BPF_PROG_MAX, attr,
					  bpf_prog_policy, NULL);
	if (ret < 0)
		return ret;

	if (!tb[LWT_BPF_PROG_FD] || !tb[LWT_BPF_PROG_NAME])
		return -EINVAL;

	prog->name = FUNC4(tb[LWT_BPF_PROG_NAME], GFP_ATOMIC);
	if (!prog->name)
		return -ENOMEM;

	fd = FUNC3(tb[LWT_BPF_PROG_FD]);
	p = FUNC2(fd, type);
	if (FUNC0(p))
		return FUNC1(p);

	prog->prog = p;

	return 0;
}