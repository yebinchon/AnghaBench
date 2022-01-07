
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int dummy; } ;
typedef int gfp_t ;


 int GFP_HIGHUSER ;
 int GFP_HIGHUSER_MOVABLE ;
 scalar_t__ hugepage_movable_supported (struct hstate*) ;

__attribute__((used)) static inline gfp_t htlb_alloc_mask(struct hstate *h)
{
 if (hugepage_movable_supported(h))
  return GFP_HIGHUSER_MOVABLE;
 else
  return GFP_HIGHUSER;
}
