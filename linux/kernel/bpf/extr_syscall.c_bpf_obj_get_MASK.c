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
union bpf_attr {scalar_t__ bpf_fd; int file_flags; int /*<<< orphan*/  pathname; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_OBJ ; 
 int BPF_OBJ_FLAG_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const union bpf_attr *attr)
{
	if (FUNC0(BPF_OBJ) || attr->bpf_fd != 0 ||
	    attr->file_flags & ~BPF_OBJ_FLAG_MASK)
		return -EINVAL;

	return FUNC1(FUNC2(attr->pathname),
				attr->file_flags);
}