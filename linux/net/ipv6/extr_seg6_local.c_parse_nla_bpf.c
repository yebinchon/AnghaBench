
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct bpf_prog* prog; int name; } ;
struct seg6_local_lwt {TYPE_1__ bpf; } ;
struct nlattr {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_TYPE_LWT_SEG6LOCAL ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 size_t SEG6_LOCAL_BPF ;
 size_t SEG6_LOCAL_BPF_PROG ;
 int SEG6_LOCAL_BPF_PROG_MAX ;
 size_t SEG6_LOCAL_BPF_PROG_NAME ;
 struct bpf_prog* bpf_prog_get_type (int ,int ) ;
 int bpf_prog_policy ;
 int kfree (int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_memdup (struct nlattr*,int ) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;

__attribute__((used)) static int parse_nla_bpf(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 struct nlattr *tb[SEG6_LOCAL_BPF_PROG_MAX + 1];
 struct bpf_prog *p;
 int ret;
 u32 fd;

 ret = nla_parse_nested_deprecated(tb, SEG6_LOCAL_BPF_PROG_MAX,
       attrs[SEG6_LOCAL_BPF],
       bpf_prog_policy, ((void*)0));
 if (ret < 0)
  return ret;

 if (!tb[SEG6_LOCAL_BPF_PROG] || !tb[SEG6_LOCAL_BPF_PROG_NAME])
  return -EINVAL;

 slwt->bpf.name = nla_memdup(tb[SEG6_LOCAL_BPF_PROG_NAME], GFP_KERNEL);
 if (!slwt->bpf.name)
  return -ENOMEM;

 fd = nla_get_u32(tb[SEG6_LOCAL_BPF_PROG]);
 p = bpf_prog_get_type(fd, BPF_PROG_TYPE_LWT_SEG6LOCAL);
 if (IS_ERR(p)) {
  kfree(slwt->bpf.name);
  return PTR_ERR(p);
 }

 slwt->bpf.prog = p;
 return 0;
}
