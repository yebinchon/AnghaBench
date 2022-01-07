
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int KM_MAYFAIL ;
 int KM_NOFS ;
 int KM_ZERO ;
 int __GFP_FS ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int __GFP_ZERO ;

__attribute__((used)) static inline gfp_t
kmem_flags_convert(xfs_km_flags_t flags)
{
 gfp_t lflags;

 BUG_ON(flags & ~(KM_NOFS|KM_MAYFAIL|KM_ZERO));

 lflags = GFP_KERNEL | __GFP_NOWARN;
 if (flags & KM_NOFS)
  lflags &= ~__GFP_FS;
 if (flags & KM_MAYFAIL)
  lflags |= __GFP_RETRY_MAYFAIL;

 if (flags & KM_ZERO)
  lflags |= __GFP_ZERO;

 return lflags;
}
