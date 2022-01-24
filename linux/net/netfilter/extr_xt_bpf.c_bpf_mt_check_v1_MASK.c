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
struct xt_mtchk_param {struct xt_bpf_info_v1* matchinfo; } ;
struct xt_bpf_info_v1 {scalar_t__ mode; int /*<<< orphan*/  filter; int /*<<< orphan*/  path; int /*<<< orphan*/  fd; int /*<<< orphan*/  bpf_program_num_elem; int /*<<< orphan*/  bpf_program; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ XT_BPF_MODE_BYTECODE ; 
 scalar_t__ XT_BPF_MODE_FD_ELF ; 
 scalar_t__ XT_BPF_MODE_PATH_PINNED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const struct xt_mtchk_param *par)
{
	struct xt_bpf_info_v1 *info = par->matchinfo;

	if (info->mode == XT_BPF_MODE_BYTECODE)
		return FUNC0(info->bpf_program,
					       info->bpf_program_num_elem,
					       &info->filter);
	else if (info->mode == XT_BPF_MODE_FD_ELF)
		return FUNC1(info->fd, &info->filter);
	else if (info->mode == XT_BPF_MODE_PATH_PINNED)
		return FUNC2(info->path, &info->filter);
	else
		return -EINVAL;
}