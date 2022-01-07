
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {void* value; void* mask; } ;
struct nfacct_filter {void* value; void* mask; } ;
struct netlink_callback {struct nlattr* data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NFACCT_FILTER_MASK ;
 int NFACCT_FILTER_MAX ;
 size_t NFACCT_FILTER_VALUE ;
 int filter_policy ;
 struct nlattr* kzalloc (int,int ) ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const* const,int ,int *) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nfnl_acct_start(struct netlink_callback *cb)
{
 const struct nlattr *const attr = cb->data;
 struct nlattr *tb[NFACCT_FILTER_MAX + 1];
 struct nfacct_filter *filter;
 int err;

 if (!attr)
  return 0;

 err = nla_parse_nested_deprecated(tb, NFACCT_FILTER_MAX, attr,
       filter_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFACCT_FILTER_MASK] || !tb[NFACCT_FILTER_VALUE])
  return -EINVAL;

 filter = kzalloc(sizeof(struct nfacct_filter), GFP_KERNEL);
 if (!filter)
  return -ENOMEM;

 filter->mask = ntohl(nla_get_be32(tb[NFACCT_FILTER_MASK]));
 filter->value = ntohl(nla_get_be32(tb[NFACCT_FILTER_VALUE]));
 cb->data = filter;

 return 0;
}
