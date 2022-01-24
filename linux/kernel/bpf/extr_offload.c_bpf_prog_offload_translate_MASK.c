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
struct bpf_prog_offload {TYPE_3__* offdev; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* translate ) (struct bpf_prog*) ;} ;
struct TYPE_4__ {struct bpf_prog_offload* offload; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct bpf_prog *prog)
{
	struct bpf_prog_offload *offload;
	int ret = -ENODEV;

	FUNC0(&bpf_devs_lock);
	offload = prog->aux->offload;
	if (offload)
		ret = offload->offdev->ops->translate(prog);
	FUNC2(&bpf_devs_lock);

	return ret;
}