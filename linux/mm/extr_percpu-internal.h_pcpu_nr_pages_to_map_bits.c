
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int PCPU_MIN_ALLOC_SIZE ;

__attribute__((used)) static inline int pcpu_nr_pages_to_map_bits(int pages)
{
 return pages * PAGE_SIZE / PCPU_MIN_ALLOC_SIZE;
}
