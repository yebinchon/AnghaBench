
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_info {int metaval; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int kmemdup (void*,int,int ) ;

int ife_alloc_meta_u32(struct tcf_meta_info *mi, void *metaval, gfp_t gfp)
{
 mi->metaval = kmemdup(metaval, sizeof(u32), gfp);
 if (!mi->metaval)
  return -ENOMEM;

 return 0;
}
