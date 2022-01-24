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
struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;

/* Variables and functions */
 struct bpf_program* FUNC0 (struct bpf_program*,struct bpf_object const*,int) ; 
 scalar_t__ FUNC1 (struct bpf_program*,struct bpf_object const*) ; 

struct bpf_program *
FUNC2(struct bpf_program *prev, const struct bpf_object *obj)
{
	struct bpf_program *prog = prev;

	do {
		prog = FUNC0(prog, obj, true);
	} while (prog && FUNC1(prog, obj));

	return prog;
}