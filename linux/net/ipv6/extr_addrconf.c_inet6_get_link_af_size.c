
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int __in6_dev_get (struct net_device const*) ;
 size_t inet6_ifla6_size () ;

__attribute__((used)) static size_t inet6_get_link_af_size(const struct net_device *dev,
         u32 ext_filter_mask)
{
 if (!__in6_dev_get(dev))
  return 0;

 return inet6_ifla6_size();
}
