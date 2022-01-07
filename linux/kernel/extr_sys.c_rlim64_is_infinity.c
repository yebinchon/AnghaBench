
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;


 scalar_t__ RLIM64_INFINITY ;
 scalar_t__ ULONG_MAX ;

__attribute__((used)) static inline bool rlim64_is_infinity(__u64 rlim64)
{

 return rlim64 >= ULONG_MAX;



}
