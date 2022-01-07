
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inetpeer_addr {int dummy; } ;
struct genl_info {int dummy; } ;


 int TCP_METRICS_ATTR_ADDR_IPV4 ;
 int TCP_METRICS_ATTR_ADDR_IPV6 ;
 int __parse_nl_addr (struct genl_info*,struct inetpeer_addr*,unsigned int*,int,int ,int ) ;

__attribute__((used)) static int parse_nl_addr(struct genl_info *info, struct inetpeer_addr *addr,
    unsigned int *hash, int optional)
{
 return __parse_nl_addr(info, addr, hash, optional,
          TCP_METRICS_ATTR_ADDR_IPV4,
          TCP_METRICS_ATTR_ADDR_IPV6);
}
