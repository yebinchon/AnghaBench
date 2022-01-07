
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;

size_t ovs_tun_key_attr_size(void)
{



 return nla_total_size_64bit(8)
  + nla_total_size(16)
  + nla_total_size(16)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(0)
  + nla_total_size(0)
  + nla_total_size(0)
  + nla_total_size(256)




  + nla_total_size(2)
  + nla_total_size(2);
}
