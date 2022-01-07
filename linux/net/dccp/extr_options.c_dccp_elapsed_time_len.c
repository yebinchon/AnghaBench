
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int dccp_elapsed_time_len(const u32 elapsed_time)
{
 return elapsed_time == 0 ? 0 : elapsed_time <= 0xFFFF ? 2 : 4;
}
