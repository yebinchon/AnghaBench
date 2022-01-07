
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int LIBBPF_ERRNO__NLPARSE ;
 size_t TCA_ACT_KIND ;
 int TCA_ACT_MAX ;
 size_t TCA_ACT_OPTIONS ;
 int do_bpf_dump_one_act (struct nlattr*) ;
 int libbpf_nla_data (struct nlattr*) ;
 scalar_t__ libbpf_nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int do_dump_one_act(struct nlattr *attr)
{
 struct nlattr *tb[TCA_ACT_MAX + 1];

 if (!attr)
  return 0;

 if (libbpf_nla_parse_nested(tb, TCA_ACT_MAX, attr, ((void*)0)) < 0)
  return -LIBBPF_ERRNO__NLPARSE;

 if (tb[TCA_ACT_KIND] &&
     strcmp(libbpf_nla_data(tb[TCA_ACT_KIND]), "bpf") == 0)
  return do_bpf_dump_one_act(tb[TCA_ACT_OPTIONS]);

 return 0;
}
