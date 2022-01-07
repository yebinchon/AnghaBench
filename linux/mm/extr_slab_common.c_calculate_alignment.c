
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slab_flags_t ;


 unsigned int ALIGN (unsigned int,int) ;
 unsigned int ARCH_SLAB_MINALIGN ;
 int SLAB_HWCACHE_ALIGN ;
 unsigned int cache_line_size () ;
 unsigned int max (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int calculate_alignment(slab_flags_t flags,
  unsigned int align, unsigned int size)
{







 if (flags & SLAB_HWCACHE_ALIGN) {
  unsigned int ralign;

  ralign = cache_line_size();
  while (size <= ralign / 2)
   ralign /= 2;
  align = max(align, ralign);
 }

 if (align < ARCH_SLAB_MINALIGN)
  align = ARCH_SLAB_MINALIGN;

 return ALIGN(align, sizeof(void *));
}
