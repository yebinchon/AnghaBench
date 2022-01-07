
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;



__attribute__((used)) static bool
gss_seq_is_newer(u32 new, u32 old)
{
 return (s32)(new - old) > 0;
}
