
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {TYPE_1__* chain; } ;
struct nlattr {int dummy; } ;
struct cls_bpf_prog {char* bpf_name; struct bpf_prog* filter; int * bpf_ops; } ;
struct bpf_prog {scalar_t__ dst_needed; } ;
struct TYPE_2__ {int block; } ;


 int BPF_PROG_TYPE_SCHED_CLS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 size_t TCA_BPF_FD ;
 size_t TCA_BPF_NAME ;
 int TCA_CLS_FLAGS_SKIP_SW ;
 struct bpf_prog* bpf_prog_get_type_dev (int,int ,int) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int nla_get_u32 (struct nlattr*) ;
 char* nla_memdup (struct nlattr*,int ) ;
 int tcf_block_netif_keep_dst (int ) ;

__attribute__((used)) static int cls_bpf_prog_from_efd(struct nlattr **tb, struct cls_bpf_prog *prog,
     u32 gen_flags, const struct tcf_proto *tp)
{
 struct bpf_prog *fp;
 char *name = ((void*)0);
 bool skip_sw;
 u32 bpf_fd;

 bpf_fd = nla_get_u32(tb[TCA_BPF_FD]);
 skip_sw = gen_flags & TCA_CLS_FLAGS_SKIP_SW;

 fp = bpf_prog_get_type_dev(bpf_fd, BPF_PROG_TYPE_SCHED_CLS, skip_sw);
 if (IS_ERR(fp))
  return PTR_ERR(fp);

 if (tb[TCA_BPF_NAME]) {
  name = nla_memdup(tb[TCA_BPF_NAME], GFP_KERNEL);
  if (!name) {
   bpf_prog_put(fp);
   return -ENOMEM;
  }
 }

 prog->bpf_ops = ((void*)0);
 prog->bpf_name = name;
 prog->filter = fp;

 if (fp->dst_needed)
  tcf_block_netif_keep_dst(tp->chain->block);

 return 0;
}
