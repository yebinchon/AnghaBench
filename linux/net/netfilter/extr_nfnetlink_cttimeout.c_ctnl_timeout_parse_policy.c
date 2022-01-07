
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {int (* nlattr_to_obj ) (struct nlattr**,struct net*,void*) ;int nla_policy; int nlattr_max; } ;
struct nf_conntrack_l4proto {TYPE_1__ ctnl_timeout; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nlattr** kcalloc (int ,int,int ) ;
 int kfree (struct nlattr**) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 int stub1 (struct nlattr**,struct net*,void*) ;

__attribute__((used)) static int
ctnl_timeout_parse_policy(void *timeout,
     const struct nf_conntrack_l4proto *l4proto,
     struct net *net, const struct nlattr *attr)
{
 struct nlattr **tb;
 int ret = 0;

 tb = kcalloc(l4proto->ctnl_timeout.nlattr_max + 1, sizeof(*tb),
       GFP_KERNEL);

 if (!tb)
  return -ENOMEM;

 ret = nla_parse_nested_deprecated(tb,
       l4proto->ctnl_timeout.nlattr_max,
       attr,
       l4proto->ctnl_timeout.nla_policy,
       ((void*)0));
 if (ret < 0)
  goto err;

 ret = l4proto->ctnl_timeout.nlattr_to_obj(tb, net, timeout);

err:
 kfree(tb);
 return ret;
}
