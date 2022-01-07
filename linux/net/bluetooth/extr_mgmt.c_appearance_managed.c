
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MGMT_ADV_FLAG_APPEARANCE ;

__attribute__((used)) static bool appearance_managed(u32 adv_flags)
{
 return adv_flags & MGMT_ADV_FLAG_APPEARANCE;
}
