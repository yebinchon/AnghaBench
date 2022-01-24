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
struct bpf_prog_linfo {struct bpf_prog_linfo* jited_linfo_func_idx; struct bpf_prog_linfo* nr_jited_linfo_per_func; struct bpf_prog_linfo* raw_jited_linfo; struct bpf_prog_linfo* raw_linfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog_linfo*) ; 

void FUNC1(struct bpf_prog_linfo *prog_linfo)
{
	if (!prog_linfo)
		return;

	FUNC0(prog_linfo->raw_linfo);
	FUNC0(prog_linfo->raw_jited_linfo);
	FUNC0(prog_linfo->nr_jited_linfo_per_func);
	FUNC0(prog_linfo->jited_linfo_func_idx);
	FUNC0(prog_linfo);
}