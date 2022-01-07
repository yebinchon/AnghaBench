
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {int nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct ifinfomsg {int dummy; } ;
typedef int (* libbpf_dump_nlmsg_t ) (void*,struct ifinfomsg*,struct nlattr**) ;


 int IFLA_MAX ;
 int LIBBPF_ERRNO__NLPARSE ;
 int NLMSG_ALIGN (int) ;
 struct ifinfomsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_LENGTH (int) ;
 scalar_t__ libbpf_nla_parse (struct nlattr**,int ,struct nlattr*,int,int *) ;

__attribute__((used)) static int __dump_link_nlmsg(struct nlmsghdr *nlh,
        libbpf_dump_nlmsg_t dump_link_nlmsg, void *cookie)
{
 struct nlattr *tb[IFLA_MAX + 1], *attr;
 struct ifinfomsg *ifi = NLMSG_DATA(nlh);
 int len;

 len = nlh->nlmsg_len - NLMSG_LENGTH(sizeof(*ifi));
 attr = (struct nlattr *) ((void *) ifi + NLMSG_ALIGN(sizeof(*ifi)));
 if (libbpf_nla_parse(tb, IFLA_MAX, attr, len, ((void*)0)) != 0)
  return -LIBBPF_ERRNO__NLPARSE;

 return dump_link_nlmsg(cookie, ifi, tb);
}
