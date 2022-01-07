
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {unsigned long vm_flags; TYPE_1__ vm_userfaultfd_ctx; int vm_pgoff; int vm_file; int anon_vma; int vm_end; int vm_start; struct vm_area_struct* vm_next; } ;
struct userfaultfd_wake_range {int len; } ;
struct TYPE_5__ {int lock; } ;
struct userfaultfd_ctx {int fd_wqh; int event_wqh; TYPE_2__ fault_pending_wqh; int fault_wqh; int released; struct mm_struct* mm; } ;
struct mm_struct {int mmap_sem; struct vm_area_struct* mmap; } ;
struct inode {int dummy; } ;
struct file {struct userfaultfd_ctx* private_data; } ;


 int BUG_ON (int) ;
 int EPOLLHUP ;
 TYPE_1__ NULL_VM_UFFD_CTX ;
 int TASK_NORMAL ;
 unsigned long VM_UFFD_MISSING ;
 unsigned long VM_UFFD_WP ;
 int WRITE_ONCE (int ,int) ;
 int __wake_up (int *,int ,int,struct userfaultfd_wake_range*) ;
 int __wake_up_locked_key (TYPE_2__*,int ,struct userfaultfd_wake_range*) ;
 int cond_resched () ;
 int down_write (int *) ;
 int mmget_not_zero (struct mm_struct*) ;
 int mmget_still_valid (struct mm_struct*) ;
 int mmput (struct mm_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int up_write (int *) ;
 int userfaultfd_ctx_put (struct userfaultfd_ctx*) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,int ,int ,unsigned long,int ,int ,int ,int ,TYPE_1__) ;
 int vma_policy (struct vm_area_struct*) ;
 int wake_up_all (int *) ;
 int wake_up_poll (int *,int ) ;

__attribute__((used)) static int userfaultfd_release(struct inode *inode, struct file *file)
{
 struct userfaultfd_ctx *ctx = file->private_data;
 struct mm_struct *mm = ctx->mm;
 struct vm_area_struct *vma, *prev;

 struct userfaultfd_wake_range range = { .len = 0, };
 unsigned long new_flags;
 bool still_valid;

 WRITE_ONCE(ctx->released, 1);

 if (!mmget_not_zero(mm))
  goto wakeup;
 down_write(&mm->mmap_sem);
 still_valid = mmget_still_valid(mm);
 prev = ((void*)0);
 for (vma = mm->mmap; vma; vma = vma->vm_next) {
  cond_resched();
  BUG_ON(!!vma->vm_userfaultfd_ctx.ctx ^
         !!(vma->vm_flags & (VM_UFFD_MISSING | VM_UFFD_WP)));
  if (vma->vm_userfaultfd_ctx.ctx != ctx) {
   prev = vma;
   continue;
  }
  new_flags = vma->vm_flags & ~(VM_UFFD_MISSING | VM_UFFD_WP);
  if (still_valid) {
   prev = vma_merge(mm, prev, vma->vm_start, vma->vm_end,
      new_flags, vma->anon_vma,
      vma->vm_file, vma->vm_pgoff,
      vma_policy(vma),
      NULL_VM_UFFD_CTX);
   if (prev)
    vma = prev;
   else
    prev = vma;
  }
  vma->vm_flags = new_flags;
  vma->vm_userfaultfd_ctx = NULL_VM_UFFD_CTX;
 }
 up_write(&mm->mmap_sem);
 mmput(mm);
wakeup:





 spin_lock_irq(&ctx->fault_pending_wqh.lock);
 __wake_up_locked_key(&ctx->fault_pending_wqh, TASK_NORMAL, &range);
 __wake_up(&ctx->fault_wqh, TASK_NORMAL, 1, &range);
 spin_unlock_irq(&ctx->fault_pending_wqh.lock);


 wake_up_all(&ctx->event_wqh);

 wake_up_poll(&ctx->fd_wqh, EPOLLHUP);
 userfaultfd_ctx_put(ctx);
 return 0;
}
