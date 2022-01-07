
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_bpf {int bpf_num_ops; int bpf_ops; } ;
struct sock_filter {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int TCA_ACT_BPF_OPS ;
 int TCA_ACT_BPF_OPS_LEN ;
 int memcpy (int ,int ,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int tcf_bpf_dump_bpf_info(const struct tcf_bpf *prog,
     struct sk_buff *skb)
{
 struct nlattr *nla;

 if (nla_put_u16(skb, TCA_ACT_BPF_OPS_LEN, prog->bpf_num_ops))
  return -EMSGSIZE;

 nla = nla_reserve(skb, TCA_ACT_BPF_OPS, prog->bpf_num_ops *
     sizeof(struct sock_filter));
 if (nla == ((void*)0))
  return -EMSGSIZE;

 memcpy(nla_data(nla), prog->bpf_ops, nla_len(nla));

 return 0;
}
