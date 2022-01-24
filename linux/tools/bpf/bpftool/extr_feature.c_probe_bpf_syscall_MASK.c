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

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_UNSPEC ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int,char const*) ; 

__attribute__((used)) static bool FUNC2(const char *define_prefix)
{
	bool res;

	FUNC0(BPF_PROG_TYPE_UNSPEC, NULL, 0, NULL, 0, NULL, 0);
	res = (errno != ENOSYS);

	FUNC1("have_bpf_syscall",
			   "bpf() syscall",
			   "BPF_SYSCALL",
			   res, define_prefix);

	return res;
}