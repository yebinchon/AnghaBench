
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nd_opt_hdr {int nd_opt_len; } ;


 scalar_t__ ndisc_is_useropt (struct net_device const*,struct nd_opt_hdr*) ;

__attribute__((used)) static struct nd_opt_hdr *ndisc_next_useropt(const struct net_device *dev,
          struct nd_opt_hdr *cur,
          struct nd_opt_hdr *end)
{
 if (!cur || !end || cur >= end)
  return ((void*)0);
 do {
  cur = ((void *)cur) + (cur->nd_opt_len << 3);
 } while (cur < end && !ndisc_is_useropt(dev, cur));
 return cur <= end && ndisc_is_useropt(dev, cur) ? cur : ((void*)0);
}
