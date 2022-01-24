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
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {scalar_t__ offload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct bpf_prog *prog)
{
	FUNC1(&bpf_devs_lock);
	if (prog->aux->offload)
		FUNC0(prog);
	FUNC2(&bpf_devs_lock);
}