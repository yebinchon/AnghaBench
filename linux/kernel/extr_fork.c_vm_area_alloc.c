
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 int GFP_KERNEL ;
 struct vm_area_struct* kmem_cache_alloc (int ,int ) ;
 int vm_area_cachep ;
 int vma_init (struct vm_area_struct*,struct mm_struct*) ;

struct vm_area_struct *vm_area_alloc(struct mm_struct *mm)
{
 struct vm_area_struct *vma;

 vma = kmem_cache_alloc(vm_area_cachep, GFP_KERNEL);
 if (vma)
  vma_init(vma, mm);
 return vma;
}
