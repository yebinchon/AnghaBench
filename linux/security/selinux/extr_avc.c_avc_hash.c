
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int AVC_CACHE_SLOTS ;

__attribute__((used)) static inline int avc_hash(u32 ssid, u32 tsid, u16 tclass)
{
 return (ssid ^ (tsid<<2) ^ (tclass<<4)) & (AVC_CACHE_SLOTS - 1);
}
