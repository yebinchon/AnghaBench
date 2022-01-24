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
struct sock_fprog_kern {struct sock_filter* filter; scalar_t__ len; } ;
struct sock_filter {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ XT_BPF_MAX_NUM_INSTR ; 
 scalar_t__ FUNC0 (struct bpf_prog**,struct sock_fprog_kern*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct sock_filter *insns, __u16 len,
				   struct bpf_prog **ret)
{
	struct sock_fprog_kern program;

	if (len > XT_BPF_MAX_NUM_INSTR)
		return -EINVAL;

	program.len = len;
	program.filter = insns;

	if (FUNC0(ret, &program)) {
		FUNC1("check failed: parse error\n");
		return -EINVAL;
	}

	return 0;
}