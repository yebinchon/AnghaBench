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
struct bpf_prog {int type; int /*<<< orphan*/  aux; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(struct bpf_prog *prog,
			    enum bpf_prog_type *attach_type, bool attach_drv)
{
	/* not an attachment, just a refcount inc, always allow */
	if (!attach_type)
		return true;

	if (prog->type != *attach_type)
		return false;
	if (FUNC0(prog->aux) && !attach_drv)
		return false;

	return true;
}