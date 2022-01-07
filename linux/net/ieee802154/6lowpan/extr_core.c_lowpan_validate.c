
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 scalar_t__ IEEE802154_ADDR_LEN ;
 size_t IFLA_ADDRESS ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int lowpan_validate(struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != IEEE802154_ADDR_LEN)
   return -EINVAL;
 }
 return 0;
}
