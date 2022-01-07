
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_bpf_cfg {char* bpf_name; int is_ebpf; struct bpf_prog* filter; } ;
struct nlattr {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_TYPE_SCHED_ACT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 size_t TCA_ACT_BPF_FD ;
 size_t TCA_ACT_BPF_NAME ;
 struct bpf_prog* bpf_prog_get_type (int ,int ) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int nla_get_u32 (struct nlattr*) ;
 char* nla_memdup (struct nlattr*,int ) ;

__attribute__((used)) static int tcf_bpf_init_from_efd(struct nlattr **tb, struct tcf_bpf_cfg *cfg)
{
 struct bpf_prog *fp;
 char *name = ((void*)0);
 u32 bpf_fd;

 bpf_fd = nla_get_u32(tb[TCA_ACT_BPF_FD]);

 fp = bpf_prog_get_type(bpf_fd, BPF_PROG_TYPE_SCHED_ACT);
 if (IS_ERR(fp))
  return PTR_ERR(fp);

 if (tb[TCA_ACT_BPF_NAME]) {
  name = nla_memdup(tb[TCA_ACT_BPF_NAME], GFP_KERNEL);
  if (!name) {
   bpf_prog_put(fp);
   return -ENOMEM;
  }
 }

 cfg->bpf_name = name;
 cfg->filter = fp;
 cfg->is_ebpf = 1;

 return 0;
}
