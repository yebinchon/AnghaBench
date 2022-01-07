
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 int ilog2 (scalar_t__) ;

__attribute__((used)) static u8 ieee80211_wmm_ecw(u16 cw_min, u16 cw_max)
{
 return ((ilog2(cw_min + 1) << 0x0) & 0x0f) |
        ((ilog2(cw_max + 1) << 0x4) & 0xf0);
}
