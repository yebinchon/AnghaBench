
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 unsigned long mmap_min_addr ;

__attribute__((used)) static inline unsigned long round_hint_to_min(unsigned long hint)
{
 hint &= PAGE_MASK;
 if (((void *)hint != ((void*)0)) &&
     (hint < mmap_min_addr))
  return PAGE_ALIGN(mmap_min_addr);
 return hint;
}
