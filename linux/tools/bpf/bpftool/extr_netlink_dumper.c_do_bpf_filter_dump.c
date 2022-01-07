
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int LIBBPF_ERRNO__NLPARSE ;
 int NET_DUMP_STR (char*,char*,int ) ;
 int NET_DUMP_UINT (char*,char*,int ) ;
 size_t TCA_BPF_ACT ;
 size_t TCA_BPF_ID ;
 int TCA_BPF_MAX ;
 size_t TCA_BPF_NAME ;
 int do_bpf_act_dump (struct nlattr*) ;
 int libbpf_nla_getattr_str (struct nlattr*) ;
 int libbpf_nla_getattr_u32 (struct nlattr*) ;
 scalar_t__ libbpf_nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;

__attribute__((used)) static int do_bpf_filter_dump(struct nlattr *attr)
{
 struct nlattr *tb[TCA_BPF_MAX + 1];
 int ret;

 if (libbpf_nla_parse_nested(tb, TCA_BPF_MAX, attr, ((void*)0)) < 0)
  return -LIBBPF_ERRNO__NLPARSE;

 if (tb[TCA_BPF_NAME])
  NET_DUMP_STR("name", " %s",
        libbpf_nla_getattr_str(tb[TCA_BPF_NAME]));
 if (tb[TCA_BPF_ID])
  NET_DUMP_UINT("id", " id %u",
         libbpf_nla_getattr_u32(tb[TCA_BPF_ID]));
 if (tb[TCA_BPF_ACT]) {
  ret = do_bpf_act_dump(tb[TCA_BPF_ACT]);
  if (ret)
   return ret;
 }

 return 0;
}
