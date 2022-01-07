
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;
typedef int __s32 ;


 int NLM_OFFSET_MAX ;

__attribute__((used)) static inline __s32
loff_t_to_s32(loff_t offset)
{
 __s32 res;
 if (offset >= NLM_OFFSET_MAX)
  res = NLM_OFFSET_MAX;
 else if (offset <= -NLM_OFFSET_MAX)
  res = -NLM_OFFSET_MAX;
 else
  res = offset;
 return res;
}
