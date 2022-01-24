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
struct bpf_prog_ops {int dummy; } ;
struct bpf_prog {int type; TYPE_1__* aux; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
struct TYPE_2__ {struct bpf_prog_ops const* ops; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_prog_ops**) ; 
 int EINVAL ; 
 int FUNC1 (int,int) ; 
 struct bpf_prog_ops const bpf_offload_prog_ops ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct bpf_prog_ops** bpf_prog_types ; 

__attribute__((used)) static int FUNC3(enum bpf_prog_type type, struct bpf_prog *prog)
{
	const struct bpf_prog_ops *ops;

	if (type >= FUNC0(bpf_prog_types))
		return -EINVAL;
	type = FUNC1(type, FUNC0(bpf_prog_types));
	ops = bpf_prog_types[type];
	if (!ops)
		return -EINVAL;

	if (!FUNC2(prog->aux))
		prog->aux->ops = ops;
	else
		prog->aux->ops = &bpf_offload_prog_ops;
	prog->type = type;
	return 0;
}