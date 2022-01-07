
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {int vm_flags; TYPE_9__ vm_userfaultfd_ctx; struct vm_area_struct* vm_next; } ;
struct TYPE_10__ {scalar_t__ reserved1; } ;
struct TYPE_11__ {TYPE_1__ reserved; } ;
struct TYPE_12__ {scalar_t__ event; TYPE_2__ arg; } ;
struct userfaultfd_wait_queue {TYPE_3__ msg; int wq; struct userfaultfd_ctx* ctx; } ;
struct TYPE_14__ {int lock; } ;
struct userfaultfd_ctx {int mmap_changing; struct mm_struct* mm; TYPE_7__ event_wqh; int fd_wqh; int released; } ;
struct mm_struct {int mmap_sem; struct vm_area_struct* mmap; } ;
struct TYPE_13__ {int flags; } ;


 int EPOLLIN ;
 TYPE_9__ NULL_VM_UFFD_CTX ;
 int PF_EXITING ;
 scalar_t__ READ_ONCE (int ) ;
 int TASK_KILLABLE ;
 int TASK_RUNNING ;
 scalar_t__ UFFD_EVENT_FORK ;
 int VM_UFFD_MISSING ;
 int VM_UFFD_WP ;
 int VM_WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int ,int) ;
 int __add_wait_queue (TYPE_7__*,int *) ;
 int __remove_wait_queue (TYPE_7__*,int *) ;
 int __set_current_state (int ) ;
 TYPE_4__* current ;
 int down_write (int *) ;
 scalar_t__ fatal_signal_pending (TYPE_4__*) ;
 int init_waitqueue_entry (int *,TYPE_4__*) ;
 int mmget_still_valid (struct mm_struct*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int up_write (int *) ;
 int userfaultfd_ctx_put (struct userfaultfd_ctx*) ;
 int wake_up_poll (int *,int ) ;

__attribute__((used)) static void userfaultfd_event_wait_completion(struct userfaultfd_ctx *ctx,
           struct userfaultfd_wait_queue *ewq)
{
 struct userfaultfd_ctx *release_new_ctx;

 if (WARN_ON_ONCE(current->flags & PF_EXITING))
  goto out;

 ewq->ctx = ctx;
 init_waitqueue_entry(&ewq->wq, current);
 release_new_ctx = ((void*)0);

 spin_lock_irq(&ctx->event_wqh.lock);




 __add_wait_queue(&ctx->event_wqh, &ewq->wq);
 for (;;) {
  set_current_state(TASK_KILLABLE);
  if (ewq->msg.event == 0)
   break;
  if (READ_ONCE(ctx->released) ||
      fatal_signal_pending(current)) {






   __remove_wait_queue(&ctx->event_wqh, &ewq->wq);
   if (ewq->msg.event == UFFD_EVENT_FORK) {
    struct userfaultfd_ctx *new;

    new = (struct userfaultfd_ctx *)
     (unsigned long)
     ewq->msg.arg.reserved.reserved1;
    release_new_ctx = new;
   }
   break;
  }

  spin_unlock_irq(&ctx->event_wqh.lock);

  wake_up_poll(&ctx->fd_wqh, EPOLLIN);
  schedule();

  spin_lock_irq(&ctx->event_wqh.lock);
 }
 __set_current_state(TASK_RUNNING);
 spin_unlock_irq(&ctx->event_wqh.lock);

 if (release_new_ctx) {
  struct vm_area_struct *vma;
  struct mm_struct *mm = release_new_ctx->mm;


  down_write(&mm->mmap_sem);

  VM_WARN_ON(!mmget_still_valid(mm));
  for (vma = mm->mmap; vma; vma = vma->vm_next)
   if (vma->vm_userfaultfd_ctx.ctx == release_new_ctx) {
    vma->vm_userfaultfd_ctx = NULL_VM_UFFD_CTX;
    vma->vm_flags &= ~(VM_UFFD_WP | VM_UFFD_MISSING);
   }
  up_write(&mm->mmap_sem);

  userfaultfd_ctx_put(release_new_ctx);
 }





out:
 WRITE_ONCE(ctx->mmap_changing, 0);
 userfaultfd_ctx_put(ctx);
}
