
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static inline
unsigned int nfs_page_array_len(unsigned int base, size_t len)
{
 return ((unsigned long)len + (unsigned long)base +
  PAGE_SIZE - 1) >> PAGE_SHIFT;
}
