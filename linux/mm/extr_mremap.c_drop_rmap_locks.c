
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; scalar_t__ anon_vma; } ;
struct TYPE_2__ {int f_mapping; } ;


 int anon_vma_unlock_write (scalar_t__) ;
 int i_mmap_unlock_write (int ) ;

__attribute__((used)) static void drop_rmap_locks(struct vm_area_struct *vma)
{
 if (vma->anon_vma)
  anon_vma_unlock_write(vma->anon_vma);
 if (vma->vm_file)
  i_mmap_unlock_write(vma->vm_file->f_mapping);
}
