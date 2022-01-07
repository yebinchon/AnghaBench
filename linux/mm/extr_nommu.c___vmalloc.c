
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;
typedef int gfp_t ;


 int __GFP_COMP ;
 int __GFP_HIGHMEM ;
 void* kmalloc (unsigned long,int) ;

void *__vmalloc(unsigned long size, gfp_t gfp_mask, pgprot_t prot)
{




 return kmalloc(size, (gfp_mask | __GFP_COMP) & ~__GFP_HIGHMEM);
}
