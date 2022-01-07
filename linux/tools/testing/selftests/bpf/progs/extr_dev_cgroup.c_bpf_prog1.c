
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_cgroup_dev_ctx {int access_type; int major; int minor; } ;
typedef int fmt ;


 short BPF_DEVCG_ACC_MKNOD ;
 short BPF_DEVCG_ACC_READ ;
 short BPF_DEVCG_ACC_WRITE ;


 int bpf_trace_printk (char*,int,int,int ) ;

int bpf_prog1(struct bpf_cgroup_dev_ctx *ctx)
{
 short type = ctx->access_type & 0xFFFF;
 if (ctx->major != 1 || type != 128)
  return 0;

 switch (ctx->minor) {
 case 5:
 case 9:
  return 1;
 }

 return 0;
}
