
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fib_dump_filter {int flags; scalar_t__ rt_type; scalar_t__ protocol; scalar_t__ dump_exceptions; scalar_t__ dump_routes; scalar_t__ filter_set; scalar_t__ dev; } ;
struct rt6_rtnl_dump_arg {TYPE_3__* cb; int skb; struct net* net; struct fib_dump_filter filter; } ;
struct TYPE_5__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_nh_exception_dump_walker {unsigned int flags; unsigned int skip; int count; struct fib6_info* rt; struct rt6_rtnl_dump_arg* dump; } ;
struct fib6_info {int fib6_flags; scalar_t__ fib6_type; scalar_t__ fib6_protocol; int fib6_nh; scalar_t__ nh; } ;
struct TYPE_8__ {int portid; } ;
struct TYPE_7__ {TYPE_2__* nlh; int skb; } ;
struct TYPE_6__ {int nlmsg_seq; } ;


 TYPE_4__ NETLINK_CB (int ) ;
 unsigned int NLM_F_DUMP_FILTERED ;
 unsigned int NLM_F_MULTI ;
 int RTF_PREFIX_RT ;
 int RTM_F_PREFIX ;
 int RTM_NEWROUTE ;
 int fib6_info_uses_dev (struct fib6_info*,scalar_t__) ;
 int nexthop_for_each_fib6_nh (scalar_t__,int (*) (int ,struct fib6_nh_exception_dump_walker*),struct fib6_nh_exception_dump_walker*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rt6_fill_node (struct net*,int ,struct fib6_info*,int *,int *,int *,int ,int ,int ,int ,unsigned int) ;
 int rt6_nh_dump_exceptions (int ,struct fib6_nh_exception_dump_walker*) ;

int rt6_dump_route(struct fib6_info *rt, void *p_arg, unsigned int skip)
{
 struct rt6_rtnl_dump_arg *arg = (struct rt6_rtnl_dump_arg *) p_arg;
 struct fib_dump_filter *filter = &arg->filter;
 unsigned int flags = NLM_F_MULTI;
 struct net *net = arg->net;
 int count = 0;

 if (rt == net->ipv6.fib6_null_entry)
  return -1;

 if ((filter->flags & RTM_F_PREFIX) &&
     !(rt->fib6_flags & RTF_PREFIX_RT)) {

  return -1;
 }
 if (filter->filter_set &&
     ((filter->rt_type && rt->fib6_type != filter->rt_type) ||
      (filter->dev && !fib6_info_uses_dev(rt, filter->dev)) ||
      (filter->protocol && rt->fib6_protocol != filter->protocol))) {
  return -1;
 }

 if (filter->filter_set ||
     !filter->dump_routes || !filter->dump_exceptions) {
  flags |= NLM_F_DUMP_FILTERED;
 }

 if (filter->dump_routes) {
  if (skip) {
   skip--;
  } else {
   if (rt6_fill_node(net, arg->skb, rt, ((void*)0), ((void*)0), ((void*)0),
       0, RTM_NEWROUTE,
       NETLINK_CB(arg->cb->skb).portid,
       arg->cb->nlh->nlmsg_seq, flags)) {
    return 0;
   }
   count++;
  }
 }

 if (filter->dump_exceptions) {
  struct fib6_nh_exception_dump_walker w = { .dump = arg,
          .rt = rt,
          .flags = flags,
          .skip = skip,
          .count = 0 };
  int err;

  rcu_read_lock();
  if (rt->nh) {
   err = nexthop_for_each_fib6_nh(rt->nh,
             rt6_nh_dump_exceptions,
             &w);
  } else {
   err = rt6_nh_dump_exceptions(rt->fib6_nh, &w);
  }
  rcu_read_unlock();

  if (err)
   return count += w.count;
 }

 return -1;
}
