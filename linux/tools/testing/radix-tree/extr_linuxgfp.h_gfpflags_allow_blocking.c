
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int const __GFP_DIRECT_RECLAIM ;

__attribute__((used)) static inline bool gfpflags_allow_blocking(const gfp_t gfp_flags)
{
 return !!(gfp_flags & __GFP_DIRECT_RECLAIM);
}
