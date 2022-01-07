
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sockaddr_storage {int dummy; } ;
struct net {int dummy; } ;
typedef int __kernel_sa_family_t ;





 int EINVAL ;
 int inet4_pton (char const*,scalar_t__,struct sockaddr_storage*) ;
 int inet6_pton (struct net*,char const*,scalar_t__,struct sockaddr_storage*) ;
 scalar_t__ kstrtou16 (char const*,int ,scalar_t__*) ;
 int pr_err (char*,int) ;

int inet_pton_with_scope(struct net *net, __kernel_sa_family_t af,
  const char *src, const char *port, struct sockaddr_storage *addr)
{
 u16 port_num;
 int ret = -EINVAL;

 if (port) {
  if (kstrtou16(port, 0, &port_num))
   return -EINVAL;
 } else {
  port_num = 0;
 }

 switch (af) {
 case 130:
  ret = inet4_pton(src, port_num, addr);
  break;
 case 129:
  ret = inet6_pton(net, src, port_num, addr);
  break;
 case 128:
  ret = inet4_pton(src, port_num, addr);
  if (ret)
   ret = inet6_pton(net, src, port_num, addr);
  break;
 default:
  pr_err("unexpected address family %d\n", af);
 }

 return ret;
}
