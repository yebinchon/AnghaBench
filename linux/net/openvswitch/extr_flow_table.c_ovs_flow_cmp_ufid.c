
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_flow_id {scalar_t__ ufid_len; int ufid; } ;
struct TYPE_2__ {scalar_t__ ufid_len; int ufid; } ;
struct sw_flow {TYPE_1__ id; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool ovs_flow_cmp_ufid(const struct sw_flow *flow,
         const struct sw_flow_id *sfid)
{
 if (flow->id.ufid_len != sfid->ufid_len)
  return 0;

 return !memcmp(flow->id.ufid, sfid->ufid, sfid->ufid_len);
}
