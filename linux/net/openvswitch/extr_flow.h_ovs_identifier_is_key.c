
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_id {int dummy; } ;


 int ovs_identifier_is_ufid (struct sw_flow_id const*) ;

__attribute__((used)) static inline bool ovs_identifier_is_key(const struct sw_flow_id *sfid)
{
 return !ovs_identifier_is_ufid(sfid);
}
