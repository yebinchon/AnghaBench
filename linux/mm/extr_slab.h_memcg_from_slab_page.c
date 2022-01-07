
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;



__attribute__((used)) static inline struct mem_cgroup *memcg_from_slab_page(struct page *page)
{
 return ((void*)0);
}
