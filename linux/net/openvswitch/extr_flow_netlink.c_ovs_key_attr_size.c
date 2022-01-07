
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON (int) ;
 int OVS_KEY_ATTR_TUNNEL_INFO ;
 size_t nla_total_size (int) ;
 size_t ovs_nsh_key_attr_size () ;
 size_t ovs_tun_key_attr_size () ;

size_t ovs_key_attr_size(void)
{



 BUILD_BUG_ON(OVS_KEY_ATTR_TUNNEL_INFO != 29);

 return nla_total_size(4)
  + nla_total_size(0)
    + ovs_tun_key_attr_size()
  + nla_total_size(4)
  + nla_total_size(4)
  + nla_total_size(4)
  + nla_total_size(4)
  + nla_total_size(4)
  + nla_total_size(2)
  + nla_total_size(4)
  + nla_total_size(16)
  + nla_total_size(40)
  + nla_total_size(0)
    + ovs_nsh_key_attr_size()
  + nla_total_size(12)
  + nla_total_size(2)
  + nla_total_size(4)
  + nla_total_size(0)
  + nla_total_size(2)
  + nla_total_size(40)
  + nla_total_size(2)
  + nla_total_size(28);
}
