
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sw_flow_key {int mac_proto; } ;


 int SW_FLOW_KEY_INVALID ;

__attribute__((used)) static inline u8 ovs_key_mac_proto(const struct sw_flow_key *key)
{
 return key->mac_proto & ~SW_FLOW_KEY_INVALID;
}
