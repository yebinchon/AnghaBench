
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct userfaultfd_ctx* ctx; } ;
struct vm_area_struct {TYPE_1__ vm_userfaultfd_ctx; struct mm_struct* vm_mm; } ;
struct TYPE_6__ {unsigned long start; unsigned long end; } ;
struct TYPE_7__ {TYPE_2__ remove; } ;
struct TYPE_8__ {TYPE_3__ arg; int event; } ;
struct userfaultfd_wait_queue {TYPE_4__ msg; } ;
struct userfaultfd_ctx {int features; int mmap_changing; } ;
struct mm_struct {int mmap_sem; } ;


 int UFFD_EVENT_REMOVE ;
 int UFFD_FEATURE_EVENT_REMOVE ;
 int WRITE_ONCE (int ,int) ;
 int msg_init (TYPE_4__*) ;
 int up_read (int *) ;
 int userfaultfd_ctx_get (struct userfaultfd_ctx*) ;
 int userfaultfd_event_wait_completion (struct userfaultfd_ctx*,struct userfaultfd_wait_queue*) ;

bool userfaultfd_remove(struct vm_area_struct *vma,
   unsigned long start, unsigned long end)
{
 struct mm_struct *mm = vma->vm_mm;
 struct userfaultfd_ctx *ctx;
 struct userfaultfd_wait_queue ewq;

 ctx = vma->vm_userfaultfd_ctx.ctx;
 if (!ctx || !(ctx->features & UFFD_FEATURE_EVENT_REMOVE))
  return 1;

 userfaultfd_ctx_get(ctx);
 WRITE_ONCE(ctx->mmap_changing, 1);
 up_read(&mm->mmap_sem);

 msg_init(&ewq.msg);

 ewq.msg.event = UFFD_EVENT_REMOVE;
 ewq.msg.arg.remove.start = start;
 ewq.msg.arg.remove.end = end;

 userfaultfd_event_wait_completion(ctx, &ewq);

 return 0;
}
