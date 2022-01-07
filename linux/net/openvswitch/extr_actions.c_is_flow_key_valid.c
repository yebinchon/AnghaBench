
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int mac_proto; } ;


 int SW_FLOW_KEY_INVALID ;

__attribute__((used)) static bool is_flow_key_valid(const struct sw_flow_key *key)
{
 return !(key->mac_proto & SW_FLOW_KEY_INVALID);
}
