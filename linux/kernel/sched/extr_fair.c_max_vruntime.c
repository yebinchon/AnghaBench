
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;



__attribute__((used)) static inline u64 max_vruntime(u64 max_vruntime, u64 vruntime)
{
 s64 delta = (s64)(vruntime - max_vruntime);
 if (delta > 0)
  max_vruntime = vruntime;

 return max_vruntime;
}
