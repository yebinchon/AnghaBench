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
struct perf_event_attr {int dummy; } ;
typedef  int /*<<< orphan*/  attr__fprintf_f ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aux_output ; 
 int /*<<< orphan*/  aux_watermark ; 
 int /*<<< orphan*/  bp_addr ; 
 int /*<<< orphan*/  bp_len ; 
 int /*<<< orphan*/  bp_type ; 
 int /*<<< orphan*/  bpf_event ; 
 int /*<<< orphan*/  branch_sample_type ; 
 int /*<<< orphan*/  clockid ; 
 int /*<<< orphan*/  comm ; 
 int /*<<< orphan*/  comm_exec ; 
 int /*<<< orphan*/  config ; 
 int /*<<< orphan*/  context_switch ; 
 int /*<<< orphan*/  disabled ; 
 int /*<<< orphan*/  enable_on_exec ; 
 int /*<<< orphan*/  exclude_callchain_kernel ; 
 int /*<<< orphan*/  exclude_callchain_user ; 
 int /*<<< orphan*/  exclude_guest ; 
 int /*<<< orphan*/  exclude_host ; 
 int /*<<< orphan*/  exclude_hv ; 
 int /*<<< orphan*/  exclude_idle ; 
 int /*<<< orphan*/  exclude_kernel ; 
 int /*<<< orphan*/  exclude_user ; 
 int /*<<< orphan*/  exclusive ; 
 int /*<<< orphan*/  freq ; 
 int /*<<< orphan*/  inherit ; 
 int /*<<< orphan*/  inherit_stat ; 
 int /*<<< orphan*/  ksymbol ; 
 int /*<<< orphan*/  mmap ; 
 int /*<<< orphan*/  mmap2 ; 
 int /*<<< orphan*/  mmap_data ; 
 int /*<<< orphan*/  namespaces ; 
 int /*<<< orphan*/  p_branch_sample_type ; 
 int /*<<< orphan*/  p_hex ; 
 int /*<<< orphan*/  p_read_format ; 
 int /*<<< orphan*/  p_sample_type ; 
 int /*<<< orphan*/  p_signed ; 
 int /*<<< orphan*/  p_unsigned ; 
 int /*<<< orphan*/  pinned ; 
 int /*<<< orphan*/  precise_ip ; 
 int /*<<< orphan*/  read_format ; 
 int /*<<< orphan*/  sample_id_all ; 
 int /*<<< orphan*/  sample_max_stack ; 
 int /*<<< orphan*/  sample_period ; 
 int /*<<< orphan*/  sample_regs_intr ; 
 int /*<<< orphan*/  sample_regs_user ; 
 int /*<<< orphan*/  sample_stack_user ; 
 int /*<<< orphan*/  sample_type ; 
 int /*<<< orphan*/  size ; 
 int /*<<< orphan*/  task ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  use_clockid ; 
 int /*<<< orphan*/  wakeup_events ; 
 int /*<<< orphan*/  watermark ; 
 int /*<<< orphan*/  write_backward ; 

int FUNC2(FILE *fp, struct perf_event_attr *attr,
			     attr__fprintf_f attr__fprintf, void *priv)
{
	char buf[BUF_SIZE];
	int ret = 0;

	FUNC0(type, p_unsigned);
	FUNC0(size, p_unsigned);
	FUNC0(config, p_hex);
	FUNC1("{ sample_period, sample_freq }", sample_period, p_unsigned);
	FUNC0(sample_type, p_sample_type);
	FUNC0(read_format, p_read_format);

	FUNC0(disabled, p_unsigned);
	FUNC0(inherit, p_unsigned);
	FUNC0(pinned, p_unsigned);
	FUNC0(exclusive, p_unsigned);
	FUNC0(exclude_user, p_unsigned);
	FUNC0(exclude_kernel, p_unsigned);
	FUNC0(exclude_hv, p_unsigned);
	FUNC0(exclude_idle, p_unsigned);
	FUNC0(mmap, p_unsigned);
	FUNC0(comm, p_unsigned);
	FUNC0(freq, p_unsigned);
	FUNC0(inherit_stat, p_unsigned);
	FUNC0(enable_on_exec, p_unsigned);
	FUNC0(task, p_unsigned);
	FUNC0(watermark, p_unsigned);
	FUNC0(precise_ip, p_unsigned);
	FUNC0(mmap_data, p_unsigned);
	FUNC0(sample_id_all, p_unsigned);
	FUNC0(exclude_host, p_unsigned);
	FUNC0(exclude_guest, p_unsigned);
	FUNC0(exclude_callchain_kernel, p_unsigned);
	FUNC0(exclude_callchain_user, p_unsigned);
	FUNC0(mmap2, p_unsigned);
	FUNC0(comm_exec, p_unsigned);
	FUNC0(use_clockid, p_unsigned);
	FUNC0(context_switch, p_unsigned);
	FUNC0(write_backward, p_unsigned);
	FUNC0(namespaces, p_unsigned);
	FUNC0(ksymbol, p_unsigned);
	FUNC0(bpf_event, p_unsigned);
	FUNC0(aux_output, p_unsigned);

	FUNC1("{ wakeup_events, wakeup_watermark }", wakeup_events, p_unsigned);
	FUNC0(bp_type, p_unsigned);
	FUNC1("{ bp_addr, config1 }", bp_addr, p_hex);
	FUNC1("{ bp_len, config2 }", bp_len, p_hex);
	FUNC0(branch_sample_type, p_branch_sample_type);
	FUNC0(sample_regs_user, p_hex);
	FUNC0(sample_stack_user, p_unsigned);
	FUNC0(clockid, p_signed);
	FUNC0(sample_regs_intr, p_hex);
	FUNC0(aux_watermark, p_unsigned);
	FUNC0(sample_max_stack, p_unsigned);

	return ret;
}