
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int is_vma_temporary_stack (struct vm_area_struct*) ;

__attribute__((used)) static bool invalid_migration_vma(struct vm_area_struct *vma, void *arg)
{
 return is_vma_temporary_stack(vma);
}
