
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int loff_t ;


 int NLM_OFFSET_MAX ;

__attribute__((used)) static s32 loff_t_to_s32(loff_t offset)
{
 s32 res;

 if (offset >= NLM_OFFSET_MAX)
  res = NLM_OFFSET_MAX;
 else if (offset <= -NLM_OFFSET_MAX)
  res = -NLM_OFFSET_MAX;
 else
  res = offset;
 return res;
}
