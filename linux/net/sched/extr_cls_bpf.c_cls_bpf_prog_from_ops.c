
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock_fprog_kern {int len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;
struct nlattr {int dummy; } ;
struct cls_bpf_prog {int bpf_num_ops; struct bpf_prog* filter; int * bpf_name; struct sock_filter* bpf_ops; } ;
struct bpf_prog {int dummy; } ;


 int BPF_MAXINSNS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t TCA_BPF_OPS ;
 size_t TCA_BPF_OPS_LEN ;
 int bpf_prog_create (struct bpf_prog**,struct sock_fprog_kern*) ;
 int kfree (struct sock_filter*) ;
 struct sock_filter* kmemdup (int ,int,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;

__attribute__((used)) static int cls_bpf_prog_from_ops(struct nlattr **tb, struct cls_bpf_prog *prog)
{
 struct sock_filter *bpf_ops;
 struct sock_fprog_kern fprog_tmp;
 struct bpf_prog *fp;
 u16 bpf_size, bpf_num_ops;
 int ret;

 bpf_num_ops = nla_get_u16(tb[TCA_BPF_OPS_LEN]);
 if (bpf_num_ops > BPF_MAXINSNS || bpf_num_ops == 0)
  return -EINVAL;

 bpf_size = bpf_num_ops * sizeof(*bpf_ops);
 if (bpf_size != nla_len(tb[TCA_BPF_OPS]))
  return -EINVAL;

 bpf_ops = kmemdup(nla_data(tb[TCA_BPF_OPS]), bpf_size, GFP_KERNEL);
 if (bpf_ops == ((void*)0))
  return -ENOMEM;

 fprog_tmp.len = bpf_num_ops;
 fprog_tmp.filter = bpf_ops;

 ret = bpf_prog_create(&fp, &fprog_tmp);
 if (ret < 0) {
  kfree(bpf_ops);
  return ret;
 }

 prog->bpf_ops = bpf_ops;
 prog->bpf_num_ops = bpf_num_ops;
 prog->bpf_name = ((void*)0);
 prog->filter = fp;

 return 0;
}
