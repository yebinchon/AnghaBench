
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_bpf {TYPE_2__* filter; scalar_t__ bpf_name; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int tag; TYPE_1__* aux; } ;
struct TYPE_3__ {int id; } ;


 int EMSGSIZE ;
 int TCA_ACT_BPF_ID ;
 int TCA_ACT_BPF_NAME ;
 int TCA_ACT_BPF_TAG ;
 int memcpy (int ,int ,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int tcf_bpf_dump_ebpf_info(const struct tcf_bpf *prog,
      struct sk_buff *skb)
{
 struct nlattr *nla;

 if (prog->bpf_name &&
     nla_put_string(skb, TCA_ACT_BPF_NAME, prog->bpf_name))
  return -EMSGSIZE;

 if (nla_put_u32(skb, TCA_ACT_BPF_ID, prog->filter->aux->id))
  return -EMSGSIZE;

 nla = nla_reserve(skb, TCA_ACT_BPF_TAG, sizeof(prog->filter->tag));
 if (nla == ((void*)0))
  return -EMSGSIZE;

 memcpy(nla_data(nla), prog->filter->tag, nla_len(nla));

 return 0;
}
