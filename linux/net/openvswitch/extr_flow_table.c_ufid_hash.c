
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sw_flow_id {int ufid_len; int ufid; } ;


 int jhash (int ,int ,int ) ;

__attribute__((used)) static u32 ufid_hash(const struct sw_flow_id *sfid)
{
 return jhash(sfid->ufid, sfid->ufid_len, 0);
}
