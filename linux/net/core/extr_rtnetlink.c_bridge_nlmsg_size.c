
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct ifinfomsg {int dummy; } ;


 int IFNAMSIZ ;
 int MAX_ADDR_LEN ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t bridge_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct ifinfomsg))
  + nla_total_size(IFNAMSIZ)
  + nla_total_size(MAX_ADDR_LEN)
  + nla_total_size(sizeof(u32))
  + nla_total_size(sizeof(u32))
  + nla_total_size(sizeof(u32))
  + nla_total_size(sizeof(u32))
  + nla_total_size(sizeof(u8))
  + nla_total_size(sizeof(struct nlattr))
  + nla_total_size(sizeof(u16))
  + nla_total_size(sizeof(u16));
}
