
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int cow_page; int memcg; int page; int address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_mm; } ;


 int GFP_HIGHUSER_MOVABLE ;
 int GFP_KERNEL ;
 int VM_FAULT_DONE_COW ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_RETRY ;
 int __SetPageUptodate (int ) ;
 int __do_fault (struct vm_fault*) ;
 int alloc_page_vma (int ,struct vm_area_struct*,int ) ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 int copy_user_highpage (int ,int ,int ,struct vm_area_struct*) ;
 int finish_fault (struct vm_fault*) ;
 int mem_cgroup_cancel_charge (int ,int ,int) ;
 scalar_t__ mem_cgroup_try_charge_delay (int ,int ,int ,int *,int) ;
 int put_page (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (int ) ;

__attribute__((used)) static vm_fault_t do_cow_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 vm_fault_t ret;

 if (unlikely(anon_vma_prepare(vma)))
  return VM_FAULT_OOM;

 vmf->cow_page = alloc_page_vma(GFP_HIGHUSER_MOVABLE, vma, vmf->address);
 if (!vmf->cow_page)
  return VM_FAULT_OOM;

 if (mem_cgroup_try_charge_delay(vmf->cow_page, vma->vm_mm, GFP_KERNEL,
    &vmf->memcg, 0)) {
  put_page(vmf->cow_page);
  return VM_FAULT_OOM;
 }

 ret = __do_fault(vmf);
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
  goto uncharge_out;
 if (ret & VM_FAULT_DONE_COW)
  return ret;

 copy_user_highpage(vmf->cow_page, vmf->page, vmf->address, vma);
 __SetPageUptodate(vmf->cow_page);

 ret |= finish_fault(vmf);
 unlock_page(vmf->page);
 put_page(vmf->page);
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
  goto uncharge_out;
 return ret;
uncharge_out:
 mem_cgroup_cancel_charge(vmf->cow_page, vmf->memcg, 0);
 put_page(vmf->cow_page);
 return ret;
}
