
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sw_flow_id {int dummy; } ;


 int OVS_UFID_F_OMIT_KEY ;
 scalar_t__ ovs_identifier_is_ufid (struct sw_flow_id const*) ;

__attribute__((used)) static bool should_fill_key(const struct sw_flow_id *sfid, uint32_t ufid_flags)
{
 return ovs_identifier_is_ufid(sfid) &&
        !(ufid_flags & OVS_UFID_F_OMIT_KEY);
}
