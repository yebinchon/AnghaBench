
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pages ;


 int GFP_KERNEL ;
 int lockdep_assert_held (int *) ;
 int pcpu_alloc_mutex ;
 struct page** pcpu_mem_zalloc (size_t,int ) ;
 int pcpu_nr_units ;
 int pcpu_unit_pages ;

__attribute__((used)) static struct page **pcpu_get_pages(void)
{
 static struct page **pages;
 size_t pages_size = pcpu_nr_units * pcpu_unit_pages * sizeof(pages[0]);

 lockdep_assert_held(&pcpu_alloc_mutex);

 if (!pages)
  pages = pcpu_mem_zalloc(pages_size, GFP_KERNEL);
 return pages;
}
