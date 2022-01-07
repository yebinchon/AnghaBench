
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_NOFAIL ;

__attribute__((used)) static inline gfp_t gfp_exact_node(gfp_t flags)
{
 return flags & ~__GFP_NOFAIL;
}
