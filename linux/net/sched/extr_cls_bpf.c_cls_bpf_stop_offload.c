
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_bpf_prog {int dummy; } ;


 int cls_bpf_offload_cmd (struct tcf_proto*,int *,struct cls_bpf_prog*,struct netlink_ext_ack*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void cls_bpf_stop_offload(struct tcf_proto *tp,
     struct cls_bpf_prog *prog,
     struct netlink_ext_ack *extack)
{
 int err;

 err = cls_bpf_offload_cmd(tp, ((void*)0), prog, extack);
 if (err)
  pr_err("Stopping hardware offload failed: %d\n", err);
}
