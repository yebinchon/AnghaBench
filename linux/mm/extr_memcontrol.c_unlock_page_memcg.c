
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mem_cgroup; } ;


 int __unlock_page_memcg (int ) ;

void unlock_page_memcg(struct page *page)
{
 __unlock_page_memcg(page->mem_cgroup);
}
