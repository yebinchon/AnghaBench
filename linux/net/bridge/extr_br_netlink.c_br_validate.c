
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
typedef scalar_t__ __u16 ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 scalar_t__ ETH_ALEN ;
 int ETH_P_8021AD ;
 int ETH_P_8021Q ;
 size_t IFLA_ADDRESS ;
 size_t IFLA_BR_VLAN_DEFAULT_PVID ;
 size_t IFLA_BR_VLAN_PROTOCOL ;
 scalar_t__ VLAN_VID_MASK ;
 int htons (int ) ;
 int is_valid_ether_addr (int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_be16 (struct nlattr*) ;
 scalar_t__ nla_get_u16 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int br_validate(struct nlattr *tb[], struct nlattr *data[],
         struct netlink_ext_ack *extack)
{
 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN)
   return -EINVAL;
  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS])))
   return -EADDRNOTAVAIL;
 }

 if (!data)
  return 0;
 return 0;
}
