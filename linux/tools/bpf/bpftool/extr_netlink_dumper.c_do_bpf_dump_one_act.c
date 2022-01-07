
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int LIBBPF_ERRNO__NLPARSE ;
 int NET_DUMP_STR (char*,char*,int ) ;
 int NET_DUMP_UINT (char*,char*,int ) ;
 int NET_END_OBJECT_NESTED ;
 int NET_START_OBJECT_NESTED2 ;
 size_t TCA_ACT_BPF_ID ;
 int TCA_ACT_BPF_MAX ;
 size_t TCA_ACT_BPF_NAME ;
 size_t TCA_ACT_BPF_PARMS ;
 int libbpf_nla_getattr_str (struct nlattr*) ;
 int libbpf_nla_getattr_u32 (struct nlattr*) ;
 scalar_t__ libbpf_nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;

__attribute__((used)) static int do_bpf_dump_one_act(struct nlattr *attr)
{
 struct nlattr *tb[TCA_ACT_BPF_MAX + 1];

 if (libbpf_nla_parse_nested(tb, TCA_ACT_BPF_MAX, attr, ((void*)0)) < 0)
  return -LIBBPF_ERRNO__NLPARSE;

 if (!tb[TCA_ACT_BPF_PARMS])
  return -LIBBPF_ERRNO__NLPARSE;

 NET_START_OBJECT_NESTED2;
 if (tb[TCA_ACT_BPF_NAME])
  NET_DUMP_STR("name", "%s",
        libbpf_nla_getattr_str(tb[TCA_ACT_BPF_NAME]));
 if (tb[TCA_ACT_BPF_ID])
  NET_DUMP_UINT("id", " id %u",
         libbpf_nla_getattr_u32(tb[TCA_ACT_BPF_ID]));
 NET_END_OBJECT_NESTED;
 return 0;
}
