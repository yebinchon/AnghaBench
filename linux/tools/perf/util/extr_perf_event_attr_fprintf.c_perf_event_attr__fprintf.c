
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
typedef int attr__fprintf_f ;
typedef int FILE ;


 int BUF_SIZE ;
 int PRINT_ATTRf (int ,int ) ;
 int PRINT_ATTRn (char*,int ,int ) ;
 int aux_output ;
 int aux_watermark ;
 int bp_addr ;
 int bp_len ;
 int bp_type ;
 int bpf_event ;
 int branch_sample_type ;
 int clockid ;
 int comm ;
 int comm_exec ;
 int config ;
 int context_switch ;
 int disabled ;
 int enable_on_exec ;
 int exclude_callchain_kernel ;
 int exclude_callchain_user ;
 int exclude_guest ;
 int exclude_host ;
 int exclude_hv ;
 int exclude_idle ;
 int exclude_kernel ;
 int exclude_user ;
 int exclusive ;
 int freq ;
 int inherit ;
 int inherit_stat ;
 int ksymbol ;
 int mmap ;
 int mmap2 ;
 int mmap_data ;
 int namespaces ;
 int p_branch_sample_type ;
 int p_hex ;
 int p_read_format ;
 int p_sample_type ;
 int p_signed ;
 int p_unsigned ;
 int pinned ;
 int precise_ip ;
 int read_format ;
 int sample_id_all ;
 int sample_max_stack ;
 int sample_period ;
 int sample_regs_intr ;
 int sample_regs_user ;
 int sample_stack_user ;
 int sample_type ;
 int size ;
 int task ;
 int type ;
 int use_clockid ;
 int wakeup_events ;
 int watermark ;
 int write_backward ;

int perf_event_attr__fprintf(FILE *fp, struct perf_event_attr *attr,
        attr__fprintf_f attr__fprintf, void *priv)
{
 char buf[BUF_SIZE];
 int ret = 0;

 PRINT_ATTRf(type, p_unsigned);
 PRINT_ATTRf(size, p_unsigned);
 PRINT_ATTRf(config, p_hex);
 PRINT_ATTRn("{ sample_period, sample_freq }", sample_period, p_unsigned);
 PRINT_ATTRf(sample_type, p_sample_type);
 PRINT_ATTRf(read_format, p_read_format);

 PRINT_ATTRf(disabled, p_unsigned);
 PRINT_ATTRf(inherit, p_unsigned);
 PRINT_ATTRf(pinned, p_unsigned);
 PRINT_ATTRf(exclusive, p_unsigned);
 PRINT_ATTRf(exclude_user, p_unsigned);
 PRINT_ATTRf(exclude_kernel, p_unsigned);
 PRINT_ATTRf(exclude_hv, p_unsigned);
 PRINT_ATTRf(exclude_idle, p_unsigned);
 PRINT_ATTRf(mmap, p_unsigned);
 PRINT_ATTRf(comm, p_unsigned);
 PRINT_ATTRf(freq, p_unsigned);
 PRINT_ATTRf(inherit_stat, p_unsigned);
 PRINT_ATTRf(enable_on_exec, p_unsigned);
 PRINT_ATTRf(task, p_unsigned);
 PRINT_ATTRf(watermark, p_unsigned);
 PRINT_ATTRf(precise_ip, p_unsigned);
 PRINT_ATTRf(mmap_data, p_unsigned);
 PRINT_ATTRf(sample_id_all, p_unsigned);
 PRINT_ATTRf(exclude_host, p_unsigned);
 PRINT_ATTRf(exclude_guest, p_unsigned);
 PRINT_ATTRf(exclude_callchain_kernel, p_unsigned);
 PRINT_ATTRf(exclude_callchain_user, p_unsigned);
 PRINT_ATTRf(mmap2, p_unsigned);
 PRINT_ATTRf(comm_exec, p_unsigned);
 PRINT_ATTRf(use_clockid, p_unsigned);
 PRINT_ATTRf(context_switch, p_unsigned);
 PRINT_ATTRf(write_backward, p_unsigned);
 PRINT_ATTRf(namespaces, p_unsigned);
 PRINT_ATTRf(ksymbol, p_unsigned);
 PRINT_ATTRf(bpf_event, p_unsigned);
 PRINT_ATTRf(aux_output, p_unsigned);

 PRINT_ATTRn("{ wakeup_events, wakeup_watermark }", wakeup_events, p_unsigned);
 PRINT_ATTRf(bp_type, p_unsigned);
 PRINT_ATTRn("{ bp_addr, config1 }", bp_addr, p_hex);
 PRINT_ATTRn("{ bp_len, config2 }", bp_len, p_hex);
 PRINT_ATTRf(branch_sample_type, p_branch_sample_type);
 PRINT_ATTRf(sample_regs_user, p_hex);
 PRINT_ATTRf(sample_stack_user, p_unsigned);
 PRINT_ATTRf(clockid, p_signed);
 PRINT_ATTRf(sample_regs_intr, p_hex);
 PRINT_ATTRf(aux_watermark, p_unsigned);
 PRINT_ATTRf(sample_max_stack, p_unsigned);

 return ret;
}
