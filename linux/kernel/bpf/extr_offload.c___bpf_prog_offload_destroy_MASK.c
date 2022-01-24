#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bpf_prog_offload {int /*<<< orphan*/  offloads; TYPE_2__* offdev; scalar_t__ dev_state; } ;
struct bpf_prog {TYPE_3__* aux; } ;
struct TYPE_6__ {struct bpf_prog_offload* offload; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct bpf_prog*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog_offload*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 

__attribute__((used)) static void FUNC4(struct bpf_prog *prog)
{
	struct bpf_prog_offload *offload = prog->aux->offload;

	if (offload->dev_state)
		offload->offdev->ops->destroy(prog);

	/* Make sure BPF_PROG_GET_NEXT_ID can't find this dead program */
	FUNC0(prog, true);

	FUNC2(&offload->offloads);
	FUNC1(offload);
	prog->aux->offload = NULL;
}