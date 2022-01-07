
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_proto {int dummy; } ;


 struct bpf_func_proto const bpf_trace_printk_proto ;
 int trace_printk_init_buffers () ;

const struct bpf_func_proto *bpf_get_trace_printk_proto(void)
{




 trace_printk_init_buffers();

 return &bpf_trace_printk_proto;
}
