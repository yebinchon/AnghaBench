
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct ifla_bridge_id {int dummy; } ;


 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;

__attribute__((used)) static inline size_t br_port_info_size(void)
{
 return nla_total_size(1)
  + nla_total_size(2)
  + nla_total_size(4)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(sizeof(struct ifla_bridge_id))
  + nla_total_size(sizeof(struct ifla_bridge_id))
  + nla_total_size(sizeof(u16))
  + nla_total_size(sizeof(u16))
  + nla_total_size(sizeof(u16))
  + nla_total_size(sizeof(u16))
  + nla_total_size(sizeof(u8))
  + nla_total_size(sizeof(u8))
  + nla_total_size_64bit(sizeof(u64))
  + nla_total_size_64bit(sizeof(u64))
  + nla_total_size_64bit(sizeof(u64))



  + nla_total_size(sizeof(u16))
  + 0;
}
