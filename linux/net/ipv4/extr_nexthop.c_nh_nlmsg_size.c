
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nexthop {scalar_t__ is_group; } ;


 scalar_t__ nh_nlmsg_size_grp (struct nexthop*) ;
 scalar_t__ nh_nlmsg_size_single (struct nexthop*) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t nh_nlmsg_size(struct nexthop *nh)
{
 size_t sz = nla_total_size(4);

 if (nh->is_group)
  sz += nh_nlmsg_size_grp(nh);
 else
  sz += nh_nlmsg_size_single(nh);

 return sz;
}
