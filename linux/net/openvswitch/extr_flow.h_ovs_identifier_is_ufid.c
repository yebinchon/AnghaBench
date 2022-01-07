
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_id {int ufid_len; } ;



__attribute__((used)) static inline bool ovs_identifier_is_ufid(const struct sw_flow_id *sfid)
{
 return sfid->ufid_len;
}
