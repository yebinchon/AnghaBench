
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int dummy; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct nlattr {int dummy; } ;
typedef int (* libbpf_dump_nlmsg_t ) (void*,struct tcmsg*,struct nlattr**) ;


 int LIBBPF_ERRNO__NLPARSE ;
 int NLMSG_ALIGN (int) ;
 struct tcmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_LENGTH (int) ;
 int TCA_MAX ;
 scalar_t__ libbpf_nla_parse (struct nlattr**,int ,struct nlattr*,int,int *) ;

__attribute__((used)) static int __dump_qdisc_nlmsg(struct nlmsghdr *nlh,
         libbpf_dump_nlmsg_t dump_qdisc_nlmsg,
         void *cookie)
{
 struct nlattr *tb[TCA_MAX + 1], *attr;
 struct tcmsg *t = NLMSG_DATA(nlh);
 int len;

 len = nlh->nlmsg_len - NLMSG_LENGTH(sizeof(*t));
 attr = (struct nlattr *) ((void *) t + NLMSG_ALIGN(sizeof(*t)));
 if (libbpf_nla_parse(tb, TCA_MAX, attr, len, ((void*)0)) != 0)
  return -LIBBPF_ERRNO__NLPARSE;

 return dump_qdisc_nlmsg(cookie, t, tb);
}
