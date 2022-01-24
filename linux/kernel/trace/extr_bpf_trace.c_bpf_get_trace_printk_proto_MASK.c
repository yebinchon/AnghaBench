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
 struct bpf_func_proto const bpf_trace_printk_proto ; 
 int /*<<< orphan*/  FUNC0 () ; 

const struct bpf_func_proto *FUNC1(void)
{
	/*
	 * this program might be calling bpf_trace_printk,
	 * so allocate per-cpu printk buffers
	 */
	FUNC0();

	return &bpf_trace_printk_proto;
}