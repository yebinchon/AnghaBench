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
struct bpf_prog {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ BPF_PROG_TYPE_SK_REUSEPORT ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 

void FUNC2(struct bpf_prog *prog)
{
	if (!prog)
		return;

	if (prog->type == BPF_PROG_TYPE_SK_REUSEPORT)
		FUNC1(prog);
	else
		FUNC0(prog);
}