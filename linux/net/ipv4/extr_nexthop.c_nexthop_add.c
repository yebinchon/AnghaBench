
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nh_config {int nlflags; int nh_protocol; scalar_t__ nh_id; scalar_t__ nh_grp; } ;
struct nexthop {struct net* net; int protocol; scalar_t__ id; int refcnt; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 struct nexthop* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct nexthop*) ;
 int NLM_F_REPLACE ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int __remove_nexthop (struct net*,struct nexthop*,int *) ;
 int insert_nexthop (struct net*,struct nexthop*,struct nh_config*,struct netlink_ext_ack*) ;
 struct nexthop* nexthop_create (struct net*,struct nh_config*,struct netlink_ext_ack*) ;
 struct nexthop* nexthop_create_group (struct net*,struct nh_config*) ;
 int nexthop_put (struct nexthop*) ;
 scalar_t__ nh_find_unused_id (struct net*) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct nexthop *nexthop_add(struct net *net, struct nh_config *cfg,
       struct netlink_ext_ack *extack)
{
 struct nexthop *nh;
 int err;

 if (cfg->nlflags & NLM_F_REPLACE && !cfg->nh_id) {
  NL_SET_ERR_MSG(extack, "Replace requires nexthop id");
  return ERR_PTR(-EINVAL);
 }

 if (!cfg->nh_id) {
  cfg->nh_id = nh_find_unused_id(net);
  if (!cfg->nh_id) {
   NL_SET_ERR_MSG(extack, "No unused id");
   return ERR_PTR(-EINVAL);
  }
 }

 if (cfg->nh_grp)
  nh = nexthop_create_group(net, cfg);
 else
  nh = nexthop_create(net, cfg, extack);

 if (IS_ERR(nh))
  return nh;

 refcount_set(&nh->refcnt, 1);
 nh->id = cfg->nh_id;
 nh->protocol = cfg->nh_protocol;
 nh->net = net;

 err = insert_nexthop(net, nh, cfg, extack);
 if (err) {
  __remove_nexthop(net, nh, ((void*)0));
  nexthop_put(nh);
  nh = ERR_PTR(err);
 }

 return nh;
}
