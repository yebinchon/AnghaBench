
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sw_flow_key {int dummy; } ;


 int __ovs_mac_header_len (int ) ;
 int ovs_key_mac_proto (struct sw_flow_key const*) ;

__attribute__((used)) static inline u16 ovs_mac_header_len(const struct sw_flow_key *key)
{
 return __ovs_mac_header_len(ovs_key_mac_proto(key));
}
