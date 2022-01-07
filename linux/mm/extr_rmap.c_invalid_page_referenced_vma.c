
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct page_referenced_arg {struct mem_cgroup* memcg; } ;
struct mem_cgroup {int dummy; } ;


 int mm_match_cgroup (int ,struct mem_cgroup*) ;

__attribute__((used)) static bool invalid_page_referenced_vma(struct vm_area_struct *vma, void *arg)
{
 struct page_referenced_arg *pra = arg;
 struct mem_cgroup *memcg = pra->memcg;

 if (!mm_match_cgroup(vma->vm_mm, memcg))
  return 1;

 return 0;
}
