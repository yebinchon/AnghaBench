
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_ZERO ;
 unsigned long* bitmap_alloc (unsigned int,int) ;

unsigned long *bitmap_zalloc(unsigned int nbits, gfp_t flags)
{
 return bitmap_alloc(nbits, flags | __GFP_ZERO);
}
