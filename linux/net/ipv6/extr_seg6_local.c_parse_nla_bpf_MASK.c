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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct bpf_prog* prog; int /*<<< orphan*/  name; } ;
struct seg6_local_lwt {TYPE_1__ bpf; } ;
struct nlattr {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_LWT_SEG6LOCAL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 size_t SEG6_LOCAL_BPF ; 
 size_t SEG6_LOCAL_BPF_PROG ; 
 int /*<<< orphan*/  SEG6_LOCAL_BPF_PROG_MAX ; 
 size_t SEG6_LOCAL_BPF_PROG_NAME ; 
 struct bpf_prog* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_prog_policy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
	struct nlattr *tb[SEG6_LOCAL_BPF_PROG_MAX + 1];
	struct bpf_prog *p;
	int ret;
	u32 fd;

	ret = FUNC6(tb, SEG6_LOCAL_BPF_PROG_MAX,
					  attrs[SEG6_LOCAL_BPF],
					  bpf_prog_policy, NULL);
	if (ret < 0)
		return ret;

	if (!tb[SEG6_LOCAL_BPF_PROG] || !tb[SEG6_LOCAL_BPF_PROG_NAME])
		return -EINVAL;

	slwt->bpf.name = FUNC5(tb[SEG6_LOCAL_BPF_PROG_NAME], GFP_KERNEL);
	if (!slwt->bpf.name)
		return -ENOMEM;

	fd = FUNC4(tb[SEG6_LOCAL_BPF_PROG]);
	p = FUNC2(fd, BPF_PROG_TYPE_LWT_SEG6LOCAL);
	if (FUNC0(p)) {
		FUNC3(slwt->bpf.name);
		return FUNC1(p);
	}

	slwt->bpf.prog = p;
	return 0;
}