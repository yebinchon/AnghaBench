
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_raw_tracepoint_args {int dummy; } ;



int prog(struct bpf_raw_tracepoint_args *ctx)
{
 return 0;
}
