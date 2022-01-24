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
struct bpf_func_proto {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bpf_func_proto const*) ; 
 scalar_t__ FUNC1 (struct bpf_func_proto const*) ; 
 scalar_t__ FUNC2 (struct bpf_func_proto const*,int) ; 

__attribute__((used)) static int FUNC3(const struct bpf_func_proto *fn, int func_id)
{
	return FUNC1(fn) &&
	       FUNC0(fn) &&
	       FUNC2(fn, func_id) ? 0 : -EINVAL;
}