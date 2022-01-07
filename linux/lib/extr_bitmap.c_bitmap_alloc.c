
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int BITS_TO_LONGS (unsigned int) ;
 unsigned long* kmalloc_array (int ,int,int ) ;

unsigned long *bitmap_alloc(unsigned int nbits, gfp_t flags)
{
 return kmalloc_array(BITS_TO_LONGS(nbits), sizeof(unsigned long),
        flags);
}
