
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xol_area {int vaddr; int xol_mapping; } ;
struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ xol_area; } ;
struct mm_struct {int mmap_sem; TYPE_1__ uprobes_state; } ;


 int EALREADY ;
 int EINTR ;
 scalar_t__ IS_ERR (struct vm_area_struct*) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PTR_ERR (struct vm_area_struct*) ;
 scalar_t__ TASK_SIZE ;
 int VM_DONTCOPY ;
 int VM_EXEC ;
 int VM_IO ;
 int VM_MAYEXEC ;
 struct vm_area_struct* _install_special_mapping (struct mm_struct*,int,scalar_t__,int,int *) ;
 scalar_t__ down_write_killable (int *) ;
 int get_unmapped_area (int *,scalar_t__,scalar_t__,int ,int ) ;
 int smp_store_release (scalar_t__*,struct xol_area*) ;
 int up_write (int *) ;

__attribute__((used)) static int xol_add_vma(struct mm_struct *mm, struct xol_area *area)
{
 struct vm_area_struct *vma;
 int ret;

 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;

 if (mm->uprobes_state.xol_area) {
  ret = -EALREADY;
  goto fail;
 }

 if (!area->vaddr) {

  area->vaddr = get_unmapped_area(((void*)0), TASK_SIZE - PAGE_SIZE,
      PAGE_SIZE, 0, 0);
  if (area->vaddr & ~PAGE_MASK) {
   ret = area->vaddr;
   goto fail;
  }
 }

 vma = _install_special_mapping(mm, area->vaddr, PAGE_SIZE,
    VM_EXEC|VM_MAYEXEC|VM_DONTCOPY|VM_IO,
    &area->xol_mapping);
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto fail;
 }

 ret = 0;

 smp_store_release(&mm->uprobes_state.xol_area, area);
 fail:
 up_write(&mm->mmap_sem);

 return ret;
}
