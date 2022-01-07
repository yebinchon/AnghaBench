
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_area_struct {int vm_mm; } ;


 unsigned int FAULT_FLAG_INSTRUCTION ;
 unsigned int FAULT_FLAG_REMOTE ;
 unsigned int FAULT_FLAG_USER ;
 unsigned int FAULT_FLAG_WRITE ;
 int PGFAULT ;
 int TASK_RUNNING ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGSEGV ;
 int __handle_mm_fault (struct vm_area_struct*,unsigned long,unsigned int) ;
 int __set_current_state (int ) ;
 int arch_vma_access_permitted (struct vm_area_struct*,unsigned int,unsigned int,unsigned int) ;
 int check_sync_rss_stat (int ) ;
 int count_memcg_event_mm (int ,int ) ;
 int count_vm_event (int ) ;
 int current ;
 int hugetlb_fault (int ,struct vm_area_struct*,unsigned long,unsigned int) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;
 int mem_cgroup_enter_user_fault () ;
 int mem_cgroup_exit_user_fault () ;
 int mem_cgroup_oom_synchronize (int) ;
 scalar_t__ task_in_memcg_oom (int ) ;
 scalar_t__ unlikely (int ) ;

vm_fault_t handle_mm_fault(struct vm_area_struct *vma, unsigned long address,
  unsigned int flags)
{
 vm_fault_t ret;

 __set_current_state(TASK_RUNNING);

 count_vm_event(PGFAULT);
 count_memcg_event_mm(vma->vm_mm, PGFAULT);


 check_sync_rss_stat(current);

 if (!arch_vma_access_permitted(vma, flags & FAULT_FLAG_WRITE,
         flags & FAULT_FLAG_INSTRUCTION,
         flags & FAULT_FLAG_REMOTE))
  return VM_FAULT_SIGSEGV;





 if (flags & FAULT_FLAG_USER)
  mem_cgroup_enter_user_fault();

 if (unlikely(is_vm_hugetlb_page(vma)))
  ret = hugetlb_fault(vma->vm_mm, vma, address, flags);
 else
  ret = __handle_mm_fault(vma, address, flags);

 if (flags & FAULT_FLAG_USER) {
  mem_cgroup_exit_user_fault();






  if (task_in_memcg_oom(current) && !(ret & VM_FAULT_OOM))
   mem_cgroup_oom_synchronize(0);
 }

 return ret;
}
