
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vm_area_struct {int vm_flags; scalar_t__ vm_start; scalar_t__ vm_end; int vm_file; scalar_t__ anon_vma; TYPE_1__* vm_mm; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {scalar_t__ checkreqprot; } ;
struct TYPE_4__ {scalar_t__ start_brk; scalar_t__ brk; scalar_t__ start_stack; } ;


 int FILE__EXECMOD ;
 int PROCESS__EXECHEAP ;
 int PROCESS__EXECSTACK ;
 unsigned long PROT_EXEC ;
 int SECCLASS_PROCESS ;
 int VM_EXEC ;
 int VM_SHARED ;
 int avc_has_perm (TYPE_2__*,int ,int ,int ,int ,int *) ;
 int cred_sid (struct cred const*) ;
 struct cred* current_cred () ;
 scalar_t__ default_noexec ;
 int file_has_perm (struct cred const*,int ,int ) ;
 int file_map_prot_check (int ,unsigned long,int) ;
 TYPE_2__ selinux_state ;
 scalar_t__ vma_is_stack_for_current (struct vm_area_struct*) ;

__attribute__((used)) static int selinux_file_mprotect(struct vm_area_struct *vma,
     unsigned long reqprot,
     unsigned long prot)
{
 const struct cred *cred = current_cred();
 u32 sid = cred_sid(cred);

 if (selinux_state.checkreqprot)
  prot = reqprot;

 if (default_noexec &&
     (prot & PROT_EXEC) && !(vma->vm_flags & VM_EXEC)) {
  int rc = 0;
  if (vma->vm_start >= vma->vm_mm->start_brk &&
      vma->vm_end <= vma->vm_mm->brk) {
   rc = avc_has_perm(&selinux_state,
       sid, sid, SECCLASS_PROCESS,
       PROCESS__EXECHEAP, ((void*)0));
  } else if (!vma->vm_file &&
      ((vma->vm_start <= vma->vm_mm->start_stack &&
        vma->vm_end >= vma->vm_mm->start_stack) ||
       vma_is_stack_for_current(vma))) {
   rc = avc_has_perm(&selinux_state,
       sid, sid, SECCLASS_PROCESS,
       PROCESS__EXECSTACK, ((void*)0));
  } else if (vma->vm_file && vma->anon_vma) {







   rc = file_has_perm(cred, vma->vm_file, FILE__EXECMOD);
  }
  if (rc)
   return rc;
 }

 return file_map_prot_check(vma->vm_file, prot, vma->vm_flags&VM_SHARED);
}
