
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atomic_long_read (int *) ;
 int nr_vmalloc_pages ;

unsigned long vmalloc_nr_pages(void)
{
 return atomic_long_read(&nr_vmalloc_pages);
}
