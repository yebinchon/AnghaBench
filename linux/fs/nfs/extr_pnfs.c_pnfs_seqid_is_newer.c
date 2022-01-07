
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static bool pnfs_seqid_is_newer(u32 s1, u32 s2)
{
 return (s32)(s1 - s2) > 0;
}
