
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ name; TYPE_2__* prog; } ;
struct seg6_local_lwt {TYPE_3__ bpf; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {TYPE_1__* aux; } ;
struct TYPE_4__ {int id; } ;


 int EMSGSIZE ;
 int SEG6_LOCAL_BPF ;
 int SEG6_LOCAL_BPF_PROG ;
 int SEG6_LOCAL_BPF_PROG_NAME ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int put_nla_bpf(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
 struct nlattr *nest;

 if (!slwt->bpf.prog)
  return 0;

 nest = nla_nest_start_noflag(skb, SEG6_LOCAL_BPF);
 if (!nest)
  return -EMSGSIZE;

 if (nla_put_u32(skb, SEG6_LOCAL_BPF_PROG, slwt->bpf.prog->aux->id))
  return -EMSGSIZE;

 if (slwt->bpf.name &&
     nla_put_string(skb, SEG6_LOCAL_BPF_PROG_NAME, slwt->bpf.name))
  return -EMSGSIZE;

 return nla_nest_end(skb, nest);
}
