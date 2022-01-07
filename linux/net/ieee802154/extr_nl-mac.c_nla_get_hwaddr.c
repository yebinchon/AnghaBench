
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
typedef int __le64 ;


 int ieee802154_devaddr_from_raw (int ) ;
 int nla_data (struct nlattr const*) ;

__attribute__((used)) static __le64 nla_get_hwaddr(const struct nlattr *nla)
{
 return ieee802154_devaddr_from_raw(nla_data(nla));
}
