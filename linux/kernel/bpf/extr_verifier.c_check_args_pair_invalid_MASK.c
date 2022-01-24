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
typedef  enum bpf_arg_type { ____Placeholder_bpf_arg_type } bpf_arg_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(enum bpf_arg_type arg_curr,
				    enum bpf_arg_type arg_next)
{
	return (FUNC0(arg_curr) &&
	        !FUNC1(arg_next)) ||
	       (!FUNC0(arg_curr) &&
		FUNC1(arg_next));
}